#!/usr/bin/env bash

set -euo pipefail

source_file="${1:-}"
git_mirror="${2:-github.com}"

if [[ -z "$source_file" ]]; then
    echo "Usage: $0 <mirror-tarballs> [git-mirror]" >&2
    exit 2
fi

# CI runners occasionally kill long-lived TLS connections mid-transfer
# (observed with openresty.org: "GnuTLS: Error in the pull function" after
# a ~2 min stall). get-tarball downloads with a bare `wget`, so one reset
# aborts the whole bundle build. Make its downloads retry and resume.
get_tarball="$(dirname -- "$source_file")/get-tarball"
if [[ -f "$get_tarball" ]]; then
    perl -0pi -e 's/wget \$1 -O \$3 \|\| exit 1/wget --tries=8 --waitretry=10 --timeout=60 --continue \$1 -O \$3 || exit 1/' "$get_tarball"
fi

# openresty.org intermittently refuses connections from CI runners, and the
# only tarball it serves here is nginx, whose canonical home is nginx.org.
# Point that download at nginx.org so the bundle stage survives an
# openresty.org outage.
sed -i 's|https://openresty.org/download/nginx-|https://nginx.org/download/nginx-|g' "$source_file"

if [[ "$git_mirror" == "github.com" ]]; then
    exit 0
fi

GIT_MIRROR="$git_mirror" perl -0pi -e '
    my $mirror = $ENV{GIT_MIRROR};

    s{https://github\.com/([^/]+)/([^/]+)/tarball/([^"\s]+)}
     {"https://$mirror/$1/$2/legacy.tar.gz/$3"}ge;

    s{https://github\.com/([^/]+)/([^/]+)/archive/(refs/tags/)?([^"\s]+)\.tar\.gz}
     {"https://$mirror/$1/$2/tar.gz/" . ($3 // "") . $4}ge;

    s{https://github\.com/}{"https://$mirror/"}ge;
' "$source_file"

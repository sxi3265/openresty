#!/usr/bin/env bash

set -euo pipefail

version="${1:-}"
architecture="${2:-}"

if [[ -z "$version" || -z "$architecture" ]]; then
    echo "Usage: $0 <version> <architecture>" >&2
    exit 2
fi

: "${GHCR_IMAGE:?GHCR_IMAGE is required}"

docker push "${GHCR_IMAGE}:${version}-${architecture}"

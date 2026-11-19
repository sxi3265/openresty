# Module Mirror Manifest

Self-maintained mirrors of the third-party modules built by this OpenResty fork.
Upstream (HanadaLee/openresty) pins every module clone to a released tag since
the 1.31.9.1.394 build restructure, and the build clones those tags from these
mirrors via `RESTY_GIT_REPO` (default `github.com/sxi3265`).

Mirror status after syncing upstream 1.31.9.1.395 (2026-11-20):

- 23 mirrors already contain the pinned tag and build as-is.
- 26 mirrors predate the tag-pinning scheme and are missing the required tag -
  re-snapshot them (with tags) before the image build will pass.
- 9 modules are newly bundled upstream and have no mirror yet.
- `ngx_tcp_fingerprint_module` is still cloned from [HanadaLee](https://github.com/HanadaLee/ngx_tcp_fingerprint_module)
  (pinned `0.2.0`, patched by `patches/ngx_tcp_fingerprint_module-no-rtt_0.2.0+.patch`).
- `lua-resty-dns-client` and `lua-lolhtml` are no longer git clones (dns-client removed;
  lolhtml installed via LuaRocks) and are dropped from this manifest.

| module | pinned version | status |
|---|---|---|
| [lua-resty-cookie](https://github.com/sxi3265/lua-resty-cookie) | `0.5.0` | mirror missing - create repo |
| [lua-resty-mlcache](https://github.com/sxi3265/lua-resty-mlcache) | `2.7.1` | repo exists, tag missing - re-snapshot |
| [ngx_backtrace_module](https://github.com/sxi3265/ngx_backtrace_module) | `0.1.1` | ok |
| [ngx_expr_module](https://github.com/sxi3265/ngx_expr_module) | `1.0.2` | repo exists, tag missing - re-snapshot |
| [ngx_geoip2_module](https://github.com/sxi3265/ngx_geoip2_module) | `3.5.0` | repo exists, tag missing - re-snapshot |
| [ngx_http_access_control_module](https://github.com/sxi3265/ngx_http_access_control_module) | `1.0.0` | ok |
| [ngx_http_auth_internal_module](https://github.com/sxi3265/ngx_http_auth_internal_module) | `1.0.0` | ok |
| [ngx_http_cache_dechunk_filter_module](https://github.com/sxi3265/ngx_http_cache_dechunk_filter_module) | `1.0.1` | ok |
| [ngx_http_cache_purge_module](https://github.com/sxi3265/ngx_http_cache_purge_module) | `5.1.4` | mirror missing - create repo |
| [ngx_http_compression_module](https://github.com/sxi3265/ngx_http_compression_module) | `1.0.1` | mirror missing - create repo |
| [ngx_http_cors_module](https://github.com/sxi3265/ngx_http_cors_module) | `0.1.1` | ok |
| [ngx_http_delay_module](https://github.com/sxi3265/ngx_http_delay_module) | `1.0.0` | mirror missing - create repo |
| [ngx_http_error_log_write_module](https://github.com/sxi3265/ngx_http_error_log_write_module) | `1.0.0` | ok |
| [ngx_http_extra_variables_module](https://github.com/sxi3265/ngx_http_extra_variables_module) | `1.0.2` | repo exists, tag missing - re-snapshot |
| [ngx_http_grpc_filter_module](https://github.com/sxi3265/ngx_http_grpc_filter_module) | `1.0.2` | repo exists, tag missing - re-snapshot |
| [ngx_http_grpc_headers_control_module](https://github.com/sxi3265/ngx_http_grpc_headers_control_module) | `1.0.1` | repo exists, tag missing - re-snapshot |
| [ngx_http_grpc_set_module](https://github.com/sxi3265/ngx_http_grpc_set_module) | `1.0.2` | repo exists, tag missing - re-snapshot |
| [ngx_http_headers_control_module](https://github.com/sxi3265/ngx_http_headers_control_module) | `1.0.1` | repo exists, tag missing - re-snapshot |
| [ngx_http_internal_redirect_module](https://github.com/sxi3265/ngx_http_internal_redirect_module) | `1.0.0` | repo exists, tag missing - re-snapshot |
| [ngx_http_label_module](https://github.com/sxi3265/ngx_http_label_module) | `1.0.0` | ok |
| [ngx_http_limit_traffic_rate_filter_module](https://github.com/sxi3265/ngx_http_limit_traffic_rate_filter_module) | `2.1.0` | repo exists, tag missing - re-snapshot |
| [ngx_http_log_set_module](https://github.com/sxi3265/ngx_http_log_set_module) | `1.0.0` | ok |
| [ngx_lua_load_var_index_module](https://github.com/sxi3265/ngx_lua_load_var_index_module) | `1.0.0` | ok |
| [ngx_http_loop_detect_module](https://github.com/sxi3265/ngx_http_loop_detect_module) | `1.0.0` | ok |
| [ngx_http_phase_control_module](https://github.com/sxi3265/ngx_http_phase_control_module) | `1.0.0` | mirror missing - create repo |
| [ngx_http_proxy_args_control_module](https://github.com/sxi3265/ngx_http_proxy_args_control_module) | `1.0.1` | repo exists, tag missing - re-snapshot |
| [ngx_http_proxy_auth_aws_module](https://github.com/sxi3265/ngx_http_proxy_auth_aws_module) | `2.1.4` | repo exists, tag missing - re-snapshot |
| [ngx_http_proxy_auth_basic_module](https://github.com/sxi3265/ngx_http_proxy_auth_basic_module) | `1.0.2` | repo exists, tag missing - re-snapshot |
| [ngx_http_proxy_auth_internal_module](https://github.com/sxi3265/ngx_http_proxy_auth_internal_module) | `1.0.2` | repo exists, tag missing - re-snapshot |
| [ngx_http_proxy_auth_netstorage_module](https://github.com/sxi3265/ngx_http_proxy_auth_netstorage_module) | `1.0.2` | repo exists, tag missing - re-snapshot |
| [ngx_http_proxy_filter_module](https://github.com/sxi3265/ngx_http_proxy_filter_module) | `1.0.2` | repo exists, tag missing - re-snapshot |
| [ngx_http_proxy_headers_control_module](https://github.com/sxi3265/ngx_http_proxy_headers_control_module) | `1.0.1` | repo exists, tag missing - re-snapshot |
| [ngx_http_proxy_request_cookies_control_module](https://github.com/sxi3265/ngx_http_proxy_request_cookies_control_module) | `1.1.1` | repo exists, tag missing - re-snapshot |
| [ngx_http_proxy_set_module](https://github.com/sxi3265/ngx_http_proxy_set_module) | `1.0.2` | repo exists, tag missing - re-snapshot |
| [ngx_http_qrcode_module](https://github.com/sxi3265/ngx_http_qrcode_module) | `1.0.0` | ok |
| [ngx_http_rewrite_status_filter_module](https://github.com/sxi3265/ngx_http_rewrite_status_filter_module) | `1.0.0` | repo exists, tag missing - re-snapshot |
| [ngx_http_secure_link_hash_module](https://github.com/sxi3265/ngx_http_secure_link_hash_module) | `2.0.0` | mirror missing - create repo |
| [ngx_http_secure_link_hmac_module](https://github.com/sxi3265/ngx_http_secure_link_hmac_module) | `0.4.0` | mirror missing - create repo |
| [ngx_http_secure_link_sign_module](https://github.com/sxi3265/ngx_http_secure_link_sign_module) | `1.0.0` | mirror missing - create repo |
| [ngx_http_security_headers_filter_module](https://github.com/sxi3265/ngx_http_security_headers_filter_module) | `0.1.2` | ok |
| [ngx_http_server_redirect_module](https://github.com/sxi3265/ngx_http_server_redirect_module) | `1.0.0` | ok |
| [ngx_http_sorted_args_module](https://github.com/sxi3265/ngx_http_sorted_args_module) | `0.3.1` | ok |
| [ngx_http_ssl_strict_server_name_module](https://github.com/sxi3265/ngx_http_ssl_strict_server_name_module) | `1.0.3` | mirror missing - create repo |
| [ngx_http_sysguard_module](https://github.com/sxi3265/ngx_http_sysguard_module) | `0.2.0` | ok |
| [ngx_http_trim_filter_module](https://github.com/sxi3265/ngx_http_trim_filter_module) | `3.1.5` | repo exists, tag missing - re-snapshot |
| [ngx_http_ua_parser_module](https://github.com/sxi3265/ngx_http_ua_parser_module) | `1.0.0` | ok |
| [ngx_http_upstream_log_module](https://github.com/sxi3265/ngx_http_upstream_log_module) | `1.0.2` | repo exists, tag missing - re-snapshot |
| [ngx_lua_config_module](https://github.com/sxi3265/ngx_lua_config_module) | `1.0.0` | ok |
| [ngx_lua_upstream_state_module](https://github.com/sxi3265/ngx_lua_upstream_state_module) | `1.0.2` | repo exists, tag missing - re-snapshot |
| [ngx_ssl_fingerprint_module](https://github.com/sxi3265/ngx_ssl_fingerprint_module) | `1.0.1` | repo exists, tag missing - re-snapshot |
| [ngx_stat_module](https://github.com/sxi3265/ngx_stat_module) | `1.0.0` | ok |
| [ngx_stream_access_control_module](https://github.com/sxi3265/ngx_stream_access_control_module) | `1.0.0` | ok |
| [ngx_stream_error_log_write_module](https://github.com/sxi3265/ngx_stream_error_log_write_module) | `1.0.0` | ok |
| [ngx_stream_extra_variables_module](https://github.com/sxi3265/ngx_stream_extra_variables_module) | `1.0.2` | repo exists, tag missing - re-snapshot |
| [ngx_stream_label_module](https://github.com/sxi3265/ngx_stream_label_module) | `1.0.0` | ok |
| [ngx_stream_log_set_module](https://github.com/sxi3265/ngx_stream_log_set_module) | `1.0.0` | ok |
| [ngx_stream_lua_upstream_module](https://github.com/sxi3265/ngx_stream_lua_upstream_module) | `1.0.0` | ok |
| [ngx_var_module](https://github.com/sxi3265/ngx_var_module) | `1.1.0` | repo exists, tag missing - re-snapshot |

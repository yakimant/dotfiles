#!/usr/bin/env bash
set -euo pipefail

proxy_vars=(
  ALL_PROXY
  NO_PROXY
  FTP_PROXY
  HTTP_PROXY
  HTTPS_PROXY
  all_proxy
  no_proxy
  ftp_proxy
  http_proxy
  https_proxy
)

for name in "${proxy_vars[@]}"; do
  value="${!name-}"

  if [[ -n "$value" ]]; then
    sudo launchctl setenv "$name" "$value"
    printf 'set %s=%q\n' "$name" "$value"
  else
    sudo launchctl unsetenv "$name" 2>/dev/null || true
    printf 'unset %s\n' "$name"
  fi
done

sudo launchctl kickstart -k system/org.nixos.nix-daemon

echo "Restarted nix-daemon."

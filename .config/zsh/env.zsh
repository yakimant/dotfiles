# Nix
[[ ! $(command -v nix) && -e "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh" ]] && source "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh"

# Locale
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# GPG
export GPG_TTY="$(tty)"

# Ripgrep
export RIPGREP_CONFIG_PATH="${HOME}/.config/ripgreprc"

# IFT
export AGE_IDENTITIES="$HOME/.passage/identities"
export LIDO_REMOTE_USER="yakimant"
#export LIDO_REMOTE_CORES=4

# Pure Prompt
zstyle :prompt:pure:git:stash show yes

#export ANDROID_HOME="${HOMEBREW_PREFIX}/share/android-commandlinetools"
#export ANDROID_SDK_ROOT="${ANDROID_HOME}"

# Direnv
eval "$(direnv hook zsh)"
export DIRENV_LOG_FORMAT=
export DIRENV_WARN_TIMEOUT=20s

# FZF
source <(fzf --zsh)

path=("$HOME/bin" $path)
#  "$(go env GOPATH)/bin"
#  "${ANDROID_HOME}/emulator"
#  "${ANDROID_HOME}/platform-tools"

if [[ "$OSTYPE" == darwin* ]]; then
  # https://specifications.freedesktop.org/basedir-spec/latest/
  export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
  export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
  export XDG_DATA_HOME="${XFG_DATA_HOME:-$HOME/.local/share}"
  export XDG_STATE_HOME="${XFG_STATE_HOME:-$HOME/.local/state}"
  export XDG_RUNTIME_DIR="${XFG_RUNTIME_HOME:-$TMPDIR}"


  # Homebrew
  eval "$(/opt/homebrew/bin/brew shellenv)"
  #export HOMEBREW_BUNDLE_FILE="${HOME}/.Brewfile"
  export HOMEBREW_NO_ENV_HINTS=1
  export HOMEBREW_NO_ANALYTICS=1
  export HOMEBREW_CLEANUP_MAX_AGE_DAYS=15
fi

export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.sock"
#export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

export PAGER="less"
export LESS="FRXMK"
export SYSTEMD_PAGER="less"
export SYSTEMD_LESS="FRXMK"

export GOPASS_AGE_PASSWORD="YUBIKEYDOESNTNEEDPAPASSWORD"

export PINENTRY_PROGRAM="${HOME}/bin/pinentry-env"
# export PINENTRY_PROGRAM="/run/current-system/sw/bin/pinentry-mac"


# TODO: only proxy whitelist of services (discord etc)
export NO_PROXY="localhost,127.0.0.1,::1,*.local,169.254.0.0/16,10.0.0.0/8,100.64.0.0/10,172.16.0.0/12,192.168.0.0/16,fc00::/7,fe80::/10,.infra.develp.co,.ts.net"

# INFO: terraform doesnt understand 5h
export HTTPS_PROXY="socks5://127.0.0.1:1080"

# export _PROXY="socks5h://127.0.0.1:1080"
# export HTTP_PROXY="$_PROXY"
# export http_proxy="$_PROXY"

# export FTP_PROXY="$ALL_PROXY"
# export ftp_proxy="$ALL_PROXY"
# export https_proxy="$_PROXY"
# export all_proxy="$ALL_PROXY"
# export no_proxy="$NO_PROXY"

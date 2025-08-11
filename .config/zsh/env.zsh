[[ ! $(command -v nix) && -e "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh" ]] && source "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh"

export GPG_TTY="$(tty)"

export RIPGREP_CONFIG_PATH="${HOME}/.config/ripgreprc"


# IFT
export AGE_IDENTITIES="$HOME/.passage/identities"
export LIDO_REMOTE_USER="yakimant"
#export LIDO_REMOTE_CORES=4
export ROLES_WORKERS=1

export PURE_GIT_PULL=0

#export ANDROID_HOME="${HOMEBREW_PREFIX}/share/android-commandlinetools"
#export ANDROID_SDK_ROOT="${ANDROID_HOME}"

eval "$(direnv hook zsh)"
export DIRENV_LOG_FORMAT=
export DIRENV_WARN_TIMEOUT=20s

source <(fzf --zsh)

path+=(
  "$HOME/bin"
#  "$(go env GOPATH)/bin"
#  "${ANDROID_HOME}/emulator"
#  "${ANDROID_HOME}/platform-tools"
)

if [[ "$OSTYPE" == darwin* ]]; then
  # https://specifications.freedesktop.org/basedir-spec/latest/
  export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
  export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
  export XDG_DATA_HOME="${XFG_DATA_HOME:-$HOME/.local/share}"
  export XDG_STATE_HOME="${XFG_STATE_HOME:-$HOME/.local/state}"
  export XDG_RUNTIME_DIR="${XFG_RUNTIME_HOME:-$TMPDIR}"

  export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.sock"

  eval "$(/opt/homebrew/bin/brew shellenv)"
  #export HOMEBREW_BUNDLE_FILE="${HOME}/.Brewfile"
  export HOMEBREW_NO_ENV_HINTS=1
fi

[[ ! $(command -v nix) && -e "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh" ]] && source "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh"

export RIPGREP_CONFIG_PATH="${HOME}/.config/ripgreprc"

eval "$(/opt/homebrew/bin/brew shellenv)"
#export HOMEBREW_BUNDLE_FILE="${HOME}/.Brewfile"
export HOMEBREW_NO_ENV_HINTS=1

# IFT
export AGE_IDENTITIES="$HOME/.passage/identities"
export LIDO_REMOTE_USER="yakimant"
export ROLES_WORKERS=1

export PURE_GIT_PULL=0

#export ANDROID_HOME="${HOMEBREW_PREFIX}/share/android-commandlinetools"
#export ANDROID_SDK_ROOT="${ANDROID_HOME}"

eval "$(direnv hook zsh)"
export DIRENV_LOG_FORMAT=''
export DIRENV_WARN_TIMEOUT=20s

source <(fzf --zsh)

path+=(
  "$HOME/bin"
  "$(go env GOPATH)/bin"
#  "${ANDROID_HOME}/emulator"
#  "${ANDROID_HOME}/platform-tools"
)

export XDG_CONFIG_HOME="$HOME/.config"

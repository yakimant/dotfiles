# Emacs ZLE bindings
bindkey -e

# Aliases
source $HOME/.aliases

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Paths
path+=("$HOME/bin")
path=("/usr/local/MacGPG2/bin" $path)
export PATH

# Editor
export EDITOR=nvim

# ASDF
. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)

# Java Home
. ~/.asdf/plugins/java/set-java-home.zsh

# Android SDK
export ANDROID_HOME="${HOMEBREW_PREFIX}/share/android-commandlinetools"
export ANDROID_SDK_ROOT="${ANDROID_HOME}"
path+=("${ANDROID_HOME}/emulator" "${ANDROID_HOME}/platform-tools")
export PATH

# Nix
[[ ! $(command -v nix) && -e "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh" ]] && source "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh"

# Go
export PATH=$PATH:$(go env GOPATH)/bin

# Podman
alias docker='podman'

# Autocompletion
autoload -Uz compinit && compinit

# SSH
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# History search
export HISTSIZE=4000              # number of lines kept in history
export SAVEHIST=4000              # number of lines saved in the history after logout
#export HISTFILE="$HOME/.zhistory" # location of history
setopt INC_APPEND_HISTORY         # append command to history file once executed
setopt SHARE_HISTORY              # for sharing history between zsh proce'ses
setopt HIST_IGNORE_ALL_DUPS       # Ignore duplicates in history
setopt HIST_IGNORE_SPACE          # don't record entry if a space is preceeding it

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

# Plugin manager
export ZSH="$HOME/.local/share/sheldon/repos/github.com/ohmyzsh/ohmyzsh"
eval "$(sheldon source)"
eval "$(starship init zsh)"


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# Aliases
source $HOME/.aliases

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# ASDF
. "$HOME/.asdf/asdf.sh"

# Java Home
. ~/.asdf/plugins/java/set-java-home.zsh

# Android SDK
export ANDROID_HOME="$HOMEBREW_PREFIX/share/android-commandlinetools"
export ANDROID_SDK_ROOT=ANDROID_HOME

# Autocompletion
autoload -U +X compinit && compinit

# History search
#HISTSIZE=999999999
#SAVEHIST=$HISTSIZE
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

# Plugin manager
export ZSH="$HOME/.local/share/sheldon/repos/github.com/ohmyzsh/ohmyzsh"
eval "$(sheldon source)"
eval "$(starship init zsh)"


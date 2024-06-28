#################################
# Exports
#################################

export RIPGREP_CONFIG_PATH="${HOME}/.ripgreprc"

# Paths
eval "$(/opt/homebrew/bin/brew shellenv)"
. "$HOME/.asdf/asdf.sh"
path+=("$HOME/bin")
path=("/usr/local/MacGPG2/bin" $path)
export PATH

export HOMEBREW_BUNDLE_FILE="${HOME}/.Brewfile"

if which nvim >/dev/null; then
    EDITOR="nvim"
    alias vim='nvim'
else
    EDITOR="vim"
fi

fpath+=($HOME/.zsh/pure)
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
export PATH="${PATH}:$(go env GOPATH)/bin"

# gpg-agent
export GPG_TTY="$(tty)"
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
gpgconf --launch gpg-agent

export ROLES_WORKERS=1

#################################
# General
#################################

# Secrets - local settings
[[ -f ~/.secret ]] && source ~/.secret


autoload colors         # enable colors
autoload -U compinit    # enable auto completion
autoload -U promptinit  # advanced prompts support
colors                  # initialize
compinit                # longest wait
promptinit

prompt pure

export PURE_GIT_PULL=0

# History search
export HISTSIZE=4000                  # number of lines kept in history
export SAVEHIST=4000                  # number of lines saved in the history after logout
export HISTFILE="$HOME/.zsh_history"  # location of history
setopt INC_APPEND_HISTORY             # append command to history file once executed
setopt SHARE_HISTORY                  # for sharing history between zsh proce'ses
setopt HIST_IGNORE_ALL_DUPS           # Ignore duplicates in history
setopt HIST_IGNORE_SPACE              # don't record entry if a space is preceeding it

# Plugin manager
#export ZSH="$HOME/.local/share/sheldon/repos/github.com/ohmyzsh/ohmyzsh"
eval "$(sheldon source)"

eval "$(direnv hook zsh)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#################################
# Key Bindings
#################################

# ZLE bindings - VI
bindkey -v

# bash like ctrl-w
autoload -U select-word-style
select-word-style bash

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

#################################
# Functions
#################################

# reload zshrc
function src() {
    autoload -U zrecompile
    [[ -f ~/.zshrc ]] && zrecompile -p ~/.zshrc
    [[ -f ~/.zcompdump ]] && zrecompile -p ~/.zcompdump
    [[ -f ~/.zcompdump ]] && zrecompile -p ~/.zcompdump
    [[ -f ~/.zshrc.zwc.old ]] && rm -f ~/.zshrc.zwc.old
    [[ -f ~/.zcompdump.zwc.old ]] && rm -f ~/.zcompdump.zwc.old
    source ~/.zshrc
}

function b {
    if [[ $# == 0 || $1 == "unlock" ]]; then
        if [[ -f "${HOME}/.bwsession" ]]; then
            source "${HOME}/.bwsession"
        fi
        if ! bw login --check; then
            echo "Log in:"
            bw login
        fi
        if ! bw unlock --check; then
            BW_SESSION=$(bw --response unlock | jq '.data.raw')
            export BW_SESSION
            echo "export BW_SESSION=${BW_SESSION}" > "${HOME}/.bwsession"
        fi
        bw sync
    else
        bw "$@"
    fi
}

function t {
    if [[ $# == 0 ]]; then
        terraform plan
    else
        terraform "$@"
    fi
}

function select-work-dir() {
    echo "${HOME}"
    WORK_DIR="${HOME}/work"
    SELECTED=$(ls "${WORK_DIR}" | fzf)
    [[ -n "${SELECTED}" ]] && cd "${WORK_DIR}/${SELECTED}"
    echo
    zle reset-prompt
}
zle     -N   select-work-dir
bindkey '^a' select-work-dir

#################################
# Aliases
#################################

alias intel='echo x86_64; arch -x86_64 zsh; arch'

# neovim
alias vi='nvim'
alias vim='nvim'

# git
alias gco='git checkout'
alias gl='git pull'
alias gst='git status'
alias gp='git push'
alias gd='git diff'
alias gds='git diff --staged'
alias ga='git add'
alias gc='git commit'
alias glg='git log'
alias glgo='git log --oneline'
alias glgp='git log --patch'
alias gf='git fetch'
alias gb='git branch'

# ls
alias l="ls -AF"
alias ll="ls -aFl"

# other
alias ..='cd ..'
alias h='fc -l 1'
alias rm='rm -i '
alias cp='cp -i '
alias mv='mv -i '

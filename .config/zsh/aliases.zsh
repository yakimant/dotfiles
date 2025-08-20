if which nvim >/dev/null; then
    EDITOR="nvim"
    alias vim='nvim'
    alias vi='nvim'
else
    EDITOR="vim"
    alias vi='vim'
fi

export VISUAL="$EDITOR"

alias intel='echo x86_64; arch -x86_64 zsh; arch'

# git
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias gl='git pull'
alias glg='git log'
alias glgo='git log --oneline'
alias glgp='git log --patch'
alias gp='git push'
alias grm='git rm'
alias gst='git status'
alias gmv='git mv'

# ls
alias l="ls -AF --color"
alias ll="ls -aFhl --color"

# other
alias ..='cd ..'
alias h='fc -l 1'
alias rm='rm -i '
alias cp='cp -i '
alias mv='mv -i '
alias grep='grep -i --color'
alias df='df -h'
alias dirs='dirs -v'
alias ansible='ansible -f1'
alias ansible-playbook='ansible-playbook -f1'
alias ssh-agent-sk='killall ssh-agent; eval $(ssh-agent); ssh-add -k ~/.ssh/id_ed25519_sk_no_touch ~/.ssh/id_ed25519_sk_touch'
alias agenix='agenix --identity ~/.passage/identities'
alias age='age --identity ~/.passage/identities'
alias markdownlint='markdownlint --config ~/.markdownlint.yaml'
alias known-hosts-remove='sudo ssh-keygen -f ~/.ssh/known_hosts -R '
#alias terraform='tofu'

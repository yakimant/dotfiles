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

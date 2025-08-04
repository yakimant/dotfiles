# ZLE bindings - VI
bindkey -v

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
# Normal mode
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
# Application mode (Alacritty)
bindkey "^[OA" history-beginning-search-backward-end
bindkey "^[OB" history-beginning-search-forward-end

zle     -N   select-work-dir
bindkey '^a' select-work-dir

# Use CTRL+e to edit the current command line:
autoload -U edit-command-line
zle -N edit-command-line
bindkey "^E" edit-command-line

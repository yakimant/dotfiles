fpath+=($HOME/.config/zsh/pure)

# Dir Stacks
DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome

#################################
# General
#################################

autoload colors         # enable colors
autoload -U compinit    # enable auto completion
autoload -U promptinit  # advanced prompts support
colors                  # initialize
compinit                # longest wait
promptinit

# History search
export HISTSIZE=4000                  # number of lines kept in history
export SAVEHIST=4000                  # number of lines saved in the history after logout
export HISTFILE="$HOME/.zsh_history"  # location of history
setopt INC_APPEND_HISTORY             # append command to history file once executed
setopt SHARE_HISTORY                  # for sharing history between zsh proce'ses
setopt HIST_IGNORE_ALL_DUPS           # Ignore duplicates in history
setopt HIST_IGNORE_SPACE              # don't record entry if a space is preceeding it

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

prompt pure

# Config parts
for config_file in ~/.config/zsh/*.zsh; do
  source "$config_file"
done

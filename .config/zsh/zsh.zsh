# History search
export HISTSIZE=10000                  # number of lines kept in history
export SAVEHIST=10000                  # number of lines saved in the history after logout
export HISTFILE="$HOME/.zsh_history"  # location of history
setopt INC_APPEND_HISTORY             # append command to history file once executed
setopt SHARE_HISTORY                  # for sharing history between zsh proce'ses
setopt HIST_IGNORE_ALL_DUPS           # Ignore duplicates in history
setopt HIST_IGNORE_SPACE              # don't record entry if a space is preceeding it

setopt GLOBDOTS                       # lets files beginning with a . be matched without explicitly specifying the dot

# Dir Stacks
DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome

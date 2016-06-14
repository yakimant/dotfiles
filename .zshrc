ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pygmalion"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitfast) #sprunge ssh-agent gitfast ruby rails4 brew bundler gem heroku rvm rake vundler osx composer)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Homemade scripts
export PATH=$PATH:~/bin

# iTerm2 tab title
function precmd(){
  hostname=`hostname -f`
  print -nP "\e]0;%n@$hostname:%~\a"
}

source ~/.aliases

# phpbrew
# source ~/.phpbrew/bashrc

# bash forever
autoload    -U      up-line-or-beginning-search
autoload    -U      down-line-or-beginning-search
zle         -N      up-line-or-beginning-search
zle         -N      down-line-or-beginning-search
bindkey     "^[[A"  up-line-or-beginning-search
bindkey     "^[[B"  down-line-or-beginning-search
bindkey     "^OA"   up-line-or-beginning-search
bindkey     "^OB"   down-line-or-beginning-search
bindkey     "^[OA"  up-line-or-beginning-search
bindkey     "^[OB"  down-line-or-beginning-search

setopt noautomenu # don't selecet menu options then completion by <TAB>
setopt NO_NOMATCH # fix git diff HEAD^ issue

# Badoo
alias deploy='/local/php5/bin/php /local/deploy/src/_scripts/deploy/deployManager.php'
export EDITOR=vim

# Less suntax highlight
LESSPIPE=`which src-hilite-lesspipe.sh`
export LESSOPEN="| ${LESSPIPE} %s"
export LESS='-R'

# RVM
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# RBENV
# eval "$(rbenv init -)"

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Android SDK
PATH=$PATH:$HOME/Library/Android/sdk/platform-tools:$HOME/Library/Android/sdk/tools

# GNU Tools
PATH="/usr/local/opt/gnu-tar/libexec/gnubin":$PATH

# JAVA
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
# export PATH=${JAVA_HOME}/bin:$PATH

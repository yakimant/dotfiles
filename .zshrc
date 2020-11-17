# Oh-my-zsh
ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="spaceship"
ZSH_THEME="pygmalion"
# ZSH_THEME="powerlevel9k/powerlevel9k"


# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(gitfast) #sprunge ssh-agent gitfast ruby rails4 brew bundler gem heroku rvm rake vundler osx composer)
plugins=(brew bundler colored-man-pages common-aliases git gitfast tmux)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Homemade scripts
export PATH=$PATH:~/bin
export PATH=$PATH:~/.local/bin/

# iTerm2 tab title - fix for tmux
#function precmd(){
#  hostname=`hostname -f`
#  print -nP "\e]0;%n@$hostname:%~\a"
#}

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

export EDITOR=nvim

# Less suntax highlight - not working, need to fix
#LESSPIPE=`which src-hilite-lesspipe.sh`
#export LESSOPEN="| ${LESSPIPE} %s"
#export LESS='-R'

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# GNU Tools
PATH="/usr/local/opt/gnu-tar/libexec/gnubin":$PATH

# JAVA
export JAVA_HOME=`/usr/libexec/java_home -v "1.8*"`
# export PATH=${JAVA_HOME}/bin:$PATH

# Android
#export ANDROID_HOME='/Users/yakimant/Library/Android/sdk'
export ANDROID_HOME='/usr/local/share/android-sdk'
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH

# Fastlane & Xcode-Install
export XCODE_INSTALL_USER='a.yakimov@corp.badoo.com'

# Homebrew
#export HOMEBREW_GITHUB_API_TOKEN=''

# RVM
#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# RBENV
# eval "$(rbenv init -)"

# Python crash fix
# https://stackoverflow.com/questions/58272830/python-crashing-on-macos-10-15-beta-19a582a-with-usr-lib-libcrypto-dylib
#export DYLD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$DYLD_LIBRARY_PATH

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# asdf
. $(brew --prefix asdf)/asdf.sh

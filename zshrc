# Path to your oh-my-zsh installation.
#
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="honukai"


# Plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

#vi bindings
bindkey -e

# Aliases
alias scip="racket -i -p neil/sicp -l xrepl"
alias idea="open -b com.jetbrains.intellij"
#
#github aliases
alias ga='git add '
alias gb='git branch '
alias gci='git commit'
alias gd='git diff'
alias gh='git hist'
alias gk='gitk --all&'
alias gco='git checkout '
alias gl='git pull'
alias gp='git push'
alias gs='git status '
alias gx='gitx --allexport'

#set vim as default
export GIT_EDITOR=vim
export VISUAL=vim
set -o vi

#cd options
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

# PATHS

## Set GOPATH
export GOPATH=$HOME/golang:$HOME/projects/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jamesmcneil/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/jamesmcneil/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/jamesmcneil/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/jamesmcneil/google-cloud-sdk/completion.zsh.inc'; fi
export PATH=/usr/local/bin:usr/bin:$PATH
## export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

 ##JAVA_HOME
export JAVA_HOME=$(/usr/libexec/java_home)

## Jenkins 
export jenkins_user=james.mcneil

## Local Secrets
source $HOME/.secrets

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

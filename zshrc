# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="honukai"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

#vi bindings
bindkey -v

# Aliases
alias ll="ls -lhA"
alias scip="racket -i -p neil/sicp -l xrepl"
alias idea="open -b com.jetbrains.intellij"
#
#github aliases
alias ga='git add '
alias gb='git branch '
alias gc='git commit -m'
alias gd='git diff'
alias gh='git hist'
alias gk='gitk --all&'
alias gco='git checkout '
alias gl='git pull'
alias gp='git push'
alias gs='git status '
alias gx='gitx --allexport'

##mongo alias
#alias mongod='mongod --dbpath ~/data/db'

#set vim as default
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim
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

## HMRC WORKSPACE
export WORKSPACE=$HOME/projects/hmrc

## Jenkins 
export jenkins_user=james.mcneil

## Local Secrets
source $HOME/.secrets

## Mongo 3.2
export PATH="/usr/local/opt/mongodb@3.2/bin:$PATH"

#TEST KITCHEN
export TEST_KITCHEN_IAM_GROUPS=webops_engineer
export TEST_KITCHEN_SSH_KEY=${HOME}/.ssh/id_rsa_platform
export TEST_KITCHEN_INSTANCE_PROFILE=TestKitchen
export TEST_KITCHEN_USER=james.mcneil
export AWS_USER=james.mcneil
export PACKER_SSH_USER=james.mcneil

#Stacks

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

#Kubernetes
export KUBE_EDITOR="vim"

#GPG pinentry
export GPG_TTY=$(tty)


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

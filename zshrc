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
export PATH=/usr/local/opt/python/libexec/bin:$PATH

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


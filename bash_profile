[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export NODE_PATH=/usr/local/bin/node:/usr/local/share/npm/lib/node_modules:/usr/local/lib/node_modules

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Aliases

alias ll="ls -lhA"
alias scip="racket -i -p neil/sicp -l xrepl"

export PATH=/usr/local/bin:$PATH

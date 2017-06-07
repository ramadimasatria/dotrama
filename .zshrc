export ZSH=/Users/ramadimasatria/.oh-my-zsh

ZSH_THEME="arrow"
plugins=(git npm osx)

source $ZSH/oh-my-zsh.sh

alias zshconfig="atom ~/.zshrc"
alias ohmyzsh="atom ~/.oh-my-zsh"
alias work="cd ~/Documents/projects"
alias fs="foreman start"
alias bi="bundle install"
alias hyperconfig="atom ~/.hyper.js"
alias a="atom ."
alias v="vim ."

export NVM_DIR="/Users/ramadimasatria/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export GOPATH="$HOME/go/"
export PATH="$GOPATH/bin:$PATH:$HOME/.rvm/bin"
export PATH="$HOME/.yarn/bin:$PATH"

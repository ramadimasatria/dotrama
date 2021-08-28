export ZSH=/Users/ramadimasatria/.oh-my-zsh
export WORKDIR="~/Documents/code"

ZSH_THEME="arrow"
plugins=(git npm osx)

source $ZSH/oh-my-zsh.sh

alias v="nvim $1"
alias zshconfig="v ~/.zshrc"
alias updatezsh="source ~/.zshrc"
alias vimconfig="v ~/.vimrc"
alias ohmyzsh="v ~/.oh-my-zsh"
alias work="cd $WORKDIR"
alias a="code ."
alias cn="ping 8.8.8.8"

export NVM_DIR="/Users/ramadimasatria/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export GOPATH="$HOME/go/"
export PATH="$GOPATH/bin:$PATH:$HOME/.rvm/bin"
export PATH="$HOME/.yarn/bin:$PATH"

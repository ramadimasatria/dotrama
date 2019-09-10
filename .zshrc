export ZSH=/Users/ramadimasatria/.oh-my-zsh

ZSH_THEME="arrow"
plugins=(git npm osx)

source $ZSH/oh-my-zsh.sh

alias zshconfig="nvim ~/.zshrc"
alias vimconfig="nvim ~/.vimrc"
alias ohmyzsh="atom ~/.oh-my-zsh"
alias work="cd ~/Documents/projects"
alias a="atom ."
alias v="nvim ."
alias cn="ping 8.8.8.8"

export NVM_DIR="/Users/ramadimasatria/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export GOPATH="$HOME/go/"
export PATH="$GOPATH/bin:$PATH:$HOME/.rvm/bin"
export PATH="$HOME/.yarn/bin:$PATH"

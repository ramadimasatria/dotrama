export ZSH="/Users/$(whoami)/.oh-my-zsh"
export WORKDIR="~/Documents/code"

ZSH_THEME="arrow"
plugins=(git npm macos)

source $ZSH/oh-my-zsh.sh

alias v="nvim $1"
alias zshconfig="v ~/.zshrc"
alias updatezsh="source ~/.zshrc"
alias vimconfig="v ~/.vimrc"
alias ohmyzsh="v ~/.oh-my-zsh"
alias work="cd $WORKDIR"
alias a="code ."
alias cn="ping 8.8.8.8"
alias gcm="git commit --message"

export NVM_DIR="/Users/$(whoami)/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export GOPATH="$HOME/go/"
export PATH="$GOPATH/bin:$PATH:$HOME/.rvm/bin"
export PATH="$HOME/.yarn/bin:$PATH"

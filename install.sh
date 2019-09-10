sudo -v

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle --file=~/.config/Brewfile

# Git
cp ~/.config/.gitignore_global ~/.gitignore_global
cp ~/.config/.gitconfig ~/.gitconfig

# ZSH
sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh
ln -sf ~/.config/zshrc ~/.zshrc

# Vim

# Node
nvm install --lts
npm install -g http-server

# Golang
go get golang.org/x/tools/cmd/godoc
go get github.com/golang/lint/golint



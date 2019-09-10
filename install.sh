export DOTRAMA="~/.config/dotrama"

sudo -v

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle --file=$DOTRAMA/Brewfile

# Git
cp $DOTRAMA/.gitignore_global ~/.gitignore_global
cp $DOTRAMA/.gitconfig ~/.gitconfig

# ZSH
sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh
ln -sf $DOTRAMA/.zshrc ~/.zshrc

# Vim
ln -sf $DOTRAMA/.vimrc ~/.vimrc

# Node
nvm install --lts
npm install -g http-server

# Golang
go get golang.org/x/tools/cmd/godoc
go get github.com/golang/lint/golint


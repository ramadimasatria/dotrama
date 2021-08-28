sudo -v

DOTRAMA=~/.config/dotrama

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle --file=$DOTRAMA/Brewfile

# Git
cp $DOTRAMA/.gitignore_global ~/.gitignore_global
cp $DOTRAMA/.gitconfig ~/.gitconfig

# ZSH
sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh
ln -sf $DOTRAMA/.zshrc ~/.zshrc

# Ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -sf $DOTRAMA/.vimrc ~/.vimrc
vim +PluginInstall +qall

# Node
nvm install --lts
npm install -g http-server

# Golang
go get golang.org/x/tools/cmd/godoc
go get github.com/golang/lint/golint


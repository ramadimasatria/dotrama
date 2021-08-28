sudo -v

USER=$(whoami)
DOTRAMA=~/.config/dotrama

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
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
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install --lts
npm install -g http-server

# Golang
go get golang.org/x/tools/cmd/godoc
go get github.com/golang/lint/golint

# Create work directory
mkdir ~/Documents/code


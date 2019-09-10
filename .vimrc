set nocompatible
filetype off

set history=500
set ruler
set number
set relativenumber
set autowrite

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-syntastic/syntastic'

Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on

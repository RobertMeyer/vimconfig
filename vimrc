""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

" Install Vundle if not installed.
if has("user_commands")
  " Setting up Vundle - the vim plugin bundler
  let VundleInstalled=0
  let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
  if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    let VundleInstalled=1
  endif
endif

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'SirVer/ultisnips'
Bundle 'rstacruz/sparkup'
Bundle 'skammer/vim-css-color'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'morhetz/gruvbox'

colorscheme gruvbox
set bg=dark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerd Tree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open Nerd Tree when Vim is opened.
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p

" Close Vim if Nerd Tree is the only open buffer.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove > sumbols from Airline.
let g:airline_left_sep=''
let g:airline_right_sep=''

set statusline=2
set lazyredraw
set t_Co=256
set ttimeoutlen=50

set encoding=utf-8
filetype plugin indent on

" Map the leader key to ,
let mapleader = ","

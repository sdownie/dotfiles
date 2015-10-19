" Turn off vi compatibility
set nocompatible
filetype off

" Add vundle to runtime path
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Vundle Dependencies
Plugin 'gmarik/vundle'

" Vundle Plugins
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-bundler'
Bundle 'powerline/powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'godlygeek/tabular'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'dkprice/vim-easygrep'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'easymotion/vim-easymotion'
Plugin 'sickill/vim-pasta'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-haml'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/searchfold'
Plugin 'tpope/vim-endwise'
Plugin 'ntpeters/vim-better-whitespace'

" All plugins must be declared between the call vundle#rc() line and the filetype plugin indent on
filetype plugin indent on

" Set spacing
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Theme config
let g:solarized_termcolors=256
set background=light
set cursorline
colorscheme solarized
set clipboard=unnamed
set pastetoggle=<F2>

" Enable Syntax Highlighting
syntax enable

" Number lines
set number
let g:ctrlp_map = '<c-p>'

" Ignore case when searching
set hlsearch

" When searching try to be smart about cases
set smartcase

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Needed for powerline-airline
set laststatus=2

" Use spaces instead of tabs
set expandtab

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Set leader to space
let mapleader = "\<Space>"

" Auto remove whitespace
autocmd BufWritePre * StripWhitespace

"""""""""""""""""""""""""
"
" vimrc
"
"""""""""""""""""""""""""

"""""""""""""""""""""""""
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
"""""""""""""""""""""""""
set nocompatible

"""""""""""""""""""""""""
" Pathogen
"""""""""""""""""""""""""
filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

"""""""""""""""""""""""""
" general options
"""""""""""""""""""""""""
set number                  " line numbers
set ruler                   " show the cursor position all the time
set visualbell              " disable sounds
set showcmd                 " display incomplete commands
set showmode                " show current mode at the bottom
set history=1000            " keep 1000 lines of command line history
set backspace=indent,eol,start " allow backspacing over everything in insert mode
" show a line marker for 80 char limits
if exists('+colorcolumn')
  set colorcolumn=80
endif

"""""""""""""""""""""""""
" indentation
"""""""""""""""""""""""""
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"""""""""""""""""""""""""
" search
"""""""""""""""""""""""""
set ignorecase              " case insensitive searching
set incsearch               " do incremental searching

"""""""""""""""""""""""""
" file settings
"""""""""""""""""""""""""
set encoding=utf-8
set autoread                " reload files changed outside of vim
set backupdir=~/.vim/tmp,.  " keeps all the 'file.ext~' files here
set directory=~/.vim/swap,. " keeps all the 'file.ext.swp' files here
filetype plugin on
filetype indent on

"""""""""""""""""""""""""
" backup & swap
"""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""
" scrolling
"""""""""""""""""""""""""
set nowrap                  " no line wrapping
set scrolloff=8             " start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
" makes navigation by j and k behave the way they should
nnoremap j gj
nnoremap k gk

"""""""""""""""""""""""""
" key commands
"""""""""""""""""""""""""
" in command mode, you can just type ';' instead of ':'
nnoremap ; :
" for quicker bailing out of insert mode
inoremap jj <esc>
" my leader key
let mapleader = ","

"""""""""""""""""""""""""
" colorscheme helpers
"""""""""""""""""""""""""
let g:solarized_termcolors=256
let g:solarized_termtrans=1

"""""""""""""""""""""""""
" colorscheme
"""""""""""""""""""""""""
"set background=light
colorscheme Tomorrow

"""""""""""""""""""""""""
" NERD Tree settings
"""""""""""""""""""""""""
map <leader>n :NERDTreeToggle<CR>
" show NERD Tree if nothing open
autocmd vimenter * if !argc() | NERDTree | endif

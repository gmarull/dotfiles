" .vimrc
" Gerard Marull-Paretas <gerardmarull@gmail.com>

" vim is not vi
set nocompatible

" vundle plugin manager
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'steffanc/cscopemaps.vim'
Plugin 'LaTeX-Box-Team/LaTeX-Box'

call vundle#end()
filetype plugin indent on

" allow local .vimrc
set exrc
set secure

" formatting
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab
set expandtab

" behaviour
set hidden
set backspace=indent,eol,start
set textwidth=80
set undofile
set undodir=~/.vimundo
set timeoutlen=1000
set ttimeoutlen=0

" appearance
set encoding=utf-8
set termencoding=utf-8
set term=screen-256color
set colorcolumn=80
set nowrap
set wildmenu
set cursorline
set number

" searching
set hlsearch
set incsearch
set showmatch
set smartcase
set ignorecase

" colors
syntax enable
set background=dark
colorscheme solarized

" specific filetype settings
autocmd FileType make setlocal noexpandtab
autocmd FileType html,css setlocal softtabstop=2 shiftwidth=2
autocmd FileType tex setlocal softtabstop=2 shiftwidth=2
au BufRead,BufNewFile *.md set filetype=markdown

" key bindings
let mapleader = ","

map <silent> <leader><space> :nohl<CR>

" plugin: airline
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'c'  : 'C',
  \ 'v'  : 'V',
  \ 'V'  : 'V',
  \ '' : 'V',
  \ 's'  : 'S',
  \ 'S'  : 'S',
  \ '' : 'S',


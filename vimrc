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
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'

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
set textwidth=79
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

" key bindings
let mapleader = ","

map <silent> <leader><space> :nohl<CR>

nnoremap <leader>T :enew<CR>
nnoremap <leader>l :bn<CR>
nnoremap <leader>h :bp<CR>
nnoremap <leader>bl :ls<CR>

nnoremap <leader>st :SyntasticToggleMode<CR>
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" plugin: airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline#extensions#tabline#buffer_idx_mode = 1

" plugin: syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" plugin: ycm
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview


" .vimrc
" Gerard Marull-Paretas <gerardmarull@gmail.com>

" vim is not vi
set nocompatible

" allow local .vimrc
set exrc
set secure

" formatting
set tabstop=8
set shiftwidth=8
set softtabstop=8
set autoindent
set smarttab

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
set colorcolumn=80
set nowrap
set wildmenu
set cursorline
set number

" searching
set hlsearch
set incsearch
set smartcase
set ignorecase

" colors
syntax enable
set background=dark
colorscheme solarized

" specific filetype settings
autocmd FileType html,css,tex setlocal expandtab softtabstop=2 shiftwidth=2
autocmd FileType python setlocal expandtab softtabstop=4 shiftwidth=4
au BufRead,BufNewFile *.md set filetype=markdown

" key bindings
let mapleader = ","
"" disable highlights
map <silent> <leader><space> :nohl<CR>
"" remove trailing spaces
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

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
  \ }

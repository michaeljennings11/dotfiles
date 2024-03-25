" Regular line numbers
set number
" Relative line numbers
set relativenumber

" Syntax highlighting
syntax on

" Mouse reporting turned on
set mouse=a

" Keep cursor in same column with navigation commands
set nostartofline

" Width of tabstop in spaces
set tabstop=4
" Size of indent in spaces
set shiftwidth=4
" Tab always inserts spaces and not tab characters
set expandtab

set timeoutlen=1000
set ttimeoutlen=5

let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

" Highlight search
set hlsearch
" Incremental search
set incsearch

" Tag file
set tags=./tags,tags;

" Highlight column at 80 characters
set colorcolumn=80  

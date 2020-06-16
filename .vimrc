set visualbell
set autoread

" search settings
set hlsearch
set ignorecase
set incsearch
set smartcase

set number
set laststatus=2

syntax on

set background=dark

set encoding=utf-8

" indent
set tabstop=2
set autoindent

augroup on-file-load
	autocmd!
	autocmd BufNewFile,BufRead *.yaml setlocal expandtab
	autocmd BufNewFile,BufRead *.yml setlocal expandtab
augroup END

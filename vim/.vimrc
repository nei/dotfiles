set background=dark

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" Make tabs as wide as two spaces
set tabstop=2

" Highlight searches
set hlsearch

" Always show status line
set laststatus=2

" Disable error bells
set noerrorbells

" Show the filename in the window titlebar
set title
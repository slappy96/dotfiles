syntax enable
set encoding=utf-8
set number relativenumber
set tabstop=4
set expandtab
"set bg=light
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus
set hidden
set exrc
set guicursor=
set hidden
set nowrap
set noswapfile
set incsearch
set scrolloff=8                                     " Minimum number of lines from cursor
"set signcolumn=yes
set ruler
set cursorline                                      " Line goes everywhere with cursor
set nocompatible
set noshowmode                                      " Don't see -- INSERT -- anymore
filetype plugin on

" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Automatically deletes all trailing whitespace and newlines at end of file on save.
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritepre * %s/\n\+\%$//e
" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

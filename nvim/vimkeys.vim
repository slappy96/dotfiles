
let mapleader =" "

" Shortcutting split navigation, saving a keypress:
"	map <C-h> <C-w>h
"	map <C-j> <C-w>j
"	map <C-k> <C-w>k
"	map <C-l> <C-w>l

" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Save file as sudo on files that require root permission
	cmap w!! w !sudo tee %

" TAB in normal mode will move to text buffer
    nnoremap <TAB> :bnext<CR>
" SHIFT TAB will go back
    nnoremap <S-TAB> :bprevious<CR>
" Better TABBING
    vnoremap < <gv
    vnoremap > >gv

" Check file in shellcheck:
	map <leader>s :!clear && shellcheck %<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>

" Open fuzzy finder
    map <leader>f :FZF ~/.config/<CR>

let mapleader = " "
call plug#begin('~/.config/nvim/plugged')
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'lervag/vimtex'
call plug#end()

" Some basics:
	set nocompatible
	filetype plugin indent on
	syntax on
	set encoding=utf-8
	set number relativenumber

" Enable autocompletion
	set wildmode=longest,list,full

" Disables automatic commenting on newline
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and the right, which is non-retarded
	set splitbelow splitright

" Shortcutting split navigation, saving a keypress

	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Spell-check set to <leader>o, 'o' for orthography
	map <leader>o :setlocal spell! spelllang=en_gb<CR>

" Toggles NERDTree
	map <C-o> :NERDTreeToggle<CR>

" Copy selected text to system clipboard (requires gvim installed)
	vnoremap <C-c> "*Y :let @+=@*<CR>
	map <C-p> "+P

" Automatically deletes all trailing whitespace on save
	autocmd BufWritePre * %s/\s+$//e

" Run xrdb whenever Xdefaults or Xresrouces are updated
	autocmd BufWritePost ~/.Xresources !xrdb %

" Goyo plugin makes text more readable when writing prose
	map <leader>f :Goyo \| set linebreak<CR>

" HTML keybindings
	autocmd FileType html inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
	autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i
	autocmd FileType html inoremap ;b <b></b><Space><++><Esc>FbT>i

" C preferences
	autocmd FileType c set tabstop=4
	autocmd FileType c set shiftwidth=4
	autocmd FileType c set expandtab

" C++ preferences
	autocmd FileType cpp set tabstop=4
	autocmd FileType cpp set shiftwidth=4
	autocmd FileType cpp set expandtab

" Java preferences
	autocmd FileType java set tabstop=4
	autocmd FIleType java set shiftwidth=4
	autocmd FileType java set expandtab

" PHP preferences
	autocmd FileType php set tabstop=4
	autocmd FileType php set shiftwidth=4
	autocmd FileType php set expandtab

" Python preferences
	autocmd FileType python set tabstop=4
	autocmd FileType python set shiftwidth=4
	autocmd FileType python set expandtab

" Vimtex setup
	let g:tex_flavor='latex'
	let g:vimtex_view_method='zathura'
	let g:vimtex_quickfix_mode=0
	set conceallevel=1
	let g:tex_conceal='abdmg'

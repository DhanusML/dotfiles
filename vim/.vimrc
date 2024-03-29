"file created by dhanus on 21-July-2021
syntax on
set nu rnu
set clipboard=unnamedplus
set encoding=utf-8
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set incsearch

call plug#begin('~/.vim/plugged')
		Plug 'tpope/vim-fugitive'	
		Plug 'vim-airline/vim-airline'
		Plug '/vim-airline/vim-airline-themes'
		Plug 'Raimondi/delimitMate'
"		Plug 'vim-syntastic/syntastic'
		Plug 'ryanoasis/vim-devicons'
		Plug 'sheerun/vim-polyglot'
		Plug 'ycm-core/YouCompleteMe'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"YCM highlightning
"hi SpellBad ctermfg=160 ctermbg=236 cterm=underline guifg=#ff0000 guibg=#303030
hi SpellBad term=reverse cterm=underline ctermfg=9 ctermbg=0 gui=undercurl guisp=Red
hi SpellCap term=reverse cterm=underline ctermfg=11 ctermbg=0 gui=undercurl guisp=Blue

"YCM disable preview split
set completeopt-=preview

map <C-c> :!pdflatex main.tex<CR><CR>
map <C-p> :!zathura main.pdf & disown<CR><CR>
map <C-t> :!alacritty --working-directory $(pwd) & disown<CR><CR>

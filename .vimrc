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
set noswapfile
set laststatus=2
let mapleader = " "
colorscheme torte

call plug#begin('~/.vim/plugged')
		Plug 'tpope/vim-fugitive'	
		"Plug 'vim-airline/vim-airline'
        Plug 'airblade/vim-gitgutter'
		Plug 'Raimondi/delimitMate'
		Plug 'ycm-core/YouCompleteMe'
		Plug 'preservim/nerdtree'
		Plug 'davidhalter/jedi-vim'
        Plug 'Yggdroot/indentLine'
        Plug 'mechatroner/rainbow_csv'
        Plug 'vim-syntastic/syntastic'
call plug#end()

set visualbell

nnoremap <leader>f :NERDTreeToggle<cr>
nnoremap <leader>l <c-w>l
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k

nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>doc :YcmCompleter GetDoc<cr>
nnoremap <leader>def :YcmCompleter GoToDefinition<cr>

inoremap jk <esc>

inoreabbrev paht path
inoreabbrev taht that
inoreabbrev classificaton classification
inoreabbrev compnents components
inoreabbrev compnent component
inoreabbrev pythone python
inoreabbrev smaples samples


augroup python_files
    autocmd FileType python vnoremap <buffer> <leader># :normal I#<esc>
augroup END




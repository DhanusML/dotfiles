syntax on
let mapleader = " "
inoremap jk <esc>
nnoremap <leader>l <c-w>l
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :edit $MYVIMRC<cr>

set laststatus=2
set relativenumber number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

set statusline=%f
set statusline+=\ %y
set statusline+=%=
set statusline+=C:%c\ 
set statusline+=L:%l/%L\ 
set statusline+=%p%%
    
" Vimscript file settings ------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

"set statusline+="=%{wordcount().words}\ words"
autocmd FileType tex setlocal statusline+="=%{wordcount().words}\ words"
autocmd FileType text setlocal statusline+="=%{wordcount().words}\ words"
autocmd FileType markdown setlocal statusline+="=%{wordcount().words}\ words"
    
nnoremap <leader>n :NerdTreeToggle<cr>
nnoremap <leader>doc :YcmCompleter GetDoc<cr>
nnoremap <leader>f :NERDTreeToggle<cr>
nnoremap <leader>def :YcmCompleter GoToDefinition<cr>
nnoremap <C-t> :!(alacritty --working-directory $(pwd) & disown) <CR><CR>
noremap <C-c> :!pdflatex main.tex<CR><CR>
noremap <C-p> :!zathura main.pdf & disown <cr><cr>
colorscheme torte

call plug#begin('~/.vim/plugged')
   Plug 'ycm-core/YouCompleteMe' 
   Plug 'Raimondi/delimitMate'
   Plug 'airblade/vim-gitgutter'
   Plug 'preservim/NerdTree'
call plug#end()

"file created by dhanus on 21-July-2021
syntax on
set nu rnu
set clipboard=unnamedplus
set encoding=utf-8
set tabstop=4 softtabstop=4
set autoindent
set incsearch


map <C-c> :!pdflatex main.tex<CR><CR>
map <C-p> :!zathura main.pdf & disown<CR><CR>

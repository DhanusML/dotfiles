#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vi='vim'

# PS1="[\[\e[01;32m\]\u@\h \[\e[00;33m\]\W\[\e[00m\]]\$ "
PS1="[\[\e[00;33m\]\w\[\e[00m\]]\$ "

# default
# PS1='[\u@\h \W]\$ '

PATH=$PATH:/home/dhanus/.myscripts:/home/dhanus/.local/bin:/home/dhanus/.myexes

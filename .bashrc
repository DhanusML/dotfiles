#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

PS1="[\[\e[01;32m\]\u@\h \[\e[00;33m\]\W\[\e[00m\]]\$ "

# default
# PS1='[\u@\h \W]\$ '

#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ $(basename $(exec tty)) == tty1 ]
then
	exec startx >/dev/null 2>&1
fi

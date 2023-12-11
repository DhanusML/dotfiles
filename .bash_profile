#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ $(basename $(exec tty)) == tty1 ]
then
    export GTK_IM_MODULE='uim'
    export QT_IM_MODULE='uim'
    uim-xim &
    export XMODIFIERS='@im=uim'

	exec startx >/dev/null 2>&1
fi

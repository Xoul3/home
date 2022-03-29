#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

## OpenRC

#if shopt -q login_shell; then
#    [[ -f ~/.bashrc ]] && source ~/.bashrc
#    [[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]] && exec startx
#else
#    exit 1 # Somehow this is a non-bash or non-login shell.
#fi

## SystemD

#if [[ ! ${DISPLAY} && ${XDG_VTNR} == 8 ]]; then
#    exec startx
#fi

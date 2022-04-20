#!bin/sh

usersrc=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
syssrc=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $syssrc ]; then
    xrdb -merge $syssrcs
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$usersrc" ]; then
    xrdb -merge "$usersrc"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

setxkbmap -option grp:caps_toggle "us,ru" -option grp_led:caps

# start
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#exec i3 
#sxhkd & exec bspwm
#exec dwm
#exec openbox

export SSH_AUTH_SOCK

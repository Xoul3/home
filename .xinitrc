#!bin/sh

usersrc=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
rootsrc=/etc/X11/xinit/.Xresources
rootmodmap=/etc/X11/xinit/.Xmodmap

# Keyboard
    setxkbmap -layout us,ru -option grp:caps_toggle
    xcape -t 300 -e 'Shift_L=Escape'
    xmodmap -e "remove Lock = Caps_Lock"

# Disable pc speaker beeps
xset -b 

# dpms(monitor settings)
xset dpms 600 700 900

xrdb -merge $HOME/.Xresources

# start daemons


if [ -d /etc/X11/xinit/xinitrc.d ]; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# start wm 
#sxhkd & exec bspwm
#exec awesome
#exec dmw
exec i3

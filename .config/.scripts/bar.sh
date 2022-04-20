#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar main --config=$HOME/.config/polybar/config.ini &


"$HOME"/.config/.scripts/notif.sh "polybar is up and running"

#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar 2>/dev/null; do sleep 1; done

# Launch Polybar, usingn pop config
polybar main --config=$HOME/.config/polybar/pop/config.ini 2>&1 | tee -a /tmp/polybar_pop.log & disown
#polybar main --config=$HOME/.config/polybar/kali/config.ini 2>&1 | tee -a /tmp/polybar_kali.log & disown

echo "Bar is launched ..."

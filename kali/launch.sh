#!/usr/bin/env bash

# Terminate alrady runnign bar instances
killall -q polybar

# Wait until the proceesses have been shut down
while pgrep -u $UID -x polybar 2>/dev/null; do sleep 1; done

# Launch Polybar, using kali config
polybar main --config=$HOME/.config/polybar/config.ini 2>&1 | tee -a /tmp/polybar_log & disown

echo "Bar is launched ...
"

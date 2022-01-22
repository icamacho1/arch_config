#!/bin/bash

killall -q polybar

# Check for the amount of monitors:
lines=$(xrandr | grep connected | grep -v dis | wc -l)

if [ $lines = 2 ]; then 
    polybar main --config=$HOME/.config/polybar/config.ini 2>/dev/null &
    polybar external --config=$HOME/.config/polybar/config.ini 2>/dev/null &
else
    polybar main --config=$HOME/.config/polybar/config.ini 2>/dev/null &
fi

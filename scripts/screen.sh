#! /bin/bash

# Get monitor names
main_monitor=$(xrandr | grep connected | grep -v dis | awk '{print $1}' | head -1)
secondary_monitor=$(xrandr | grep connected | grep -v dis | awk '{print $1}' | tail -1)

# Monitor resolutions
main_resolution=$(xrandr | grep + | grep -v connected | awk '{print $1}' | head -1)
secondary_resolution=$(xrandr | grep + | grep -v connected | awk '{print $1}' | head -2 | tail -1)
xrandr --output $main_monitor --primary --rotate normal --mode $main_resolution --output $secondary_monitor --rotate normal --mode $secondary_resolution --left-of $main_monitor

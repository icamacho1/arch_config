#! /bin/bash

# Determine battery level
details=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "state" | awk -F: '{print $2}' | awk '{$1=$1;print}')
[[ $details = charging ]] && exit 0
battery=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}' | cut -d "%" -f1)
time_left=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "time to empty" | awk -F: '{print $2}' | awk '{$1=$1;print}')
[[ $battery = 100 ]] && exit 0
[[ $battery < 20 ]] && /usr/bin/dunstify "Running low on battery ($battery%) - $time_left remaining" -u critical -i battery-empty -t 7000

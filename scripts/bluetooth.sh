#! /bin/bash

# Activating the bluetooth environ:
bluetoothctl power on 

# Creating the array of items:
devices=$(bluetoothctl devices | awk '{print $2}'| sort -u)

for device in $devices; do
   bluetoothctl connect $device
done

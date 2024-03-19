#!/bin/bash
# List all Bluetooth devices and pipe them to dmenu for selection
selected_device=$(bluetoothctl list | grep Device | cut -d ' ' -f 2 | wmenu -i -l 10 -p "Select a Bluetooth device:")
# Check if a device was selected
if [ -z "$selected_device" ]; then
    echo "No device selected."
    exit 1
fi
# Attempt to connect to the selected device
echo "Connecting to $selected_device..."
bluetoothctl connect $selected_device

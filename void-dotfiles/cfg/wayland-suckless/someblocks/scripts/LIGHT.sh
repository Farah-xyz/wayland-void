#!/bin/sh
echo "[ 🌞 $(brightnessctl -m | awk -F ',' '{print $4}') ]"


#!/bin/bash
#==========================#
# For capturing screen:    #
#==========================#
dbus-update-activation-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=river
#==========================#
# Background:              #
#==========================#
# pkill wlsunset; wlsunset -l 30 -L 120 -t 3500 -T 5000 &
wbg ~/pix/wallpapers/FANTASY.png &
#==========================#
#  APP Daemon:             #
#==========================#
pkill udiskie; udiskie --smart-tray --notify --file-manager=pcmanfm --terminal=lxterminal &
pkill waybar; waybar &
pipewire &
pipewire-pulse &
blueman-applet &
nm-applet &
fnott &

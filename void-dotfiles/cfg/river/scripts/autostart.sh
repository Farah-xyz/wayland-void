#!/bin/bash
#==========================#
# For capturing screen:    #
#==========================#
dbus-update-activation-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=river
#==========================#
# Background & Bar:        #
#==========================#
wlsunset -l 30 -L 120 -t 3500 -T 5000 &
brightnessctl set 100% &
wbg ~/pix/wallpapers/YELLOW.png &
pkill waybar;waybar &
#==========================#
#  APP Daemon:             #
#==========================#
pkill udiskie; udiskie --smart-tray --notify --file-manager=pcmanfm --terminal=lxterminal &
pipewire &
pipewire-pulse &
blueman-applet &
nm-applet &
fnott &

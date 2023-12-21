#!/bin/bash
#==========================#
# For capturing screen:    #
#==========================#
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway
#==========================#
# Background & Bar:        #
#==========================#
wlsunset -l 30 -L 120 -t 3500 -T 5000 &
brightnessctl set 100% &
wbg ~/pix/FANTASY.png &
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

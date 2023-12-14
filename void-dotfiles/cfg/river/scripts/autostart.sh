#!/bin/bash
#==========================#
# For capturing screen:    #
#==========================#
dbus-update-activation-environment DISPLAY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=river
#==========================#
# Background & Bar:        #
#==========================#
brightnessctl set 100% &
wbg ~/pix/FLOWER.png &
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

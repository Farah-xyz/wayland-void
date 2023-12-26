#!/bin/bash
#==========================#
# For capturing screen:    #
#==========================#
dbus-update-activation-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=river
#==========================#
# Background:              #
#==========================#
wbg ~/pix/wallpapers/FANTASY.png &
pkill wlsunset; wlsunset &
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

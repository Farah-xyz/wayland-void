#!/bin/bash
#==========================#
# For capturing screen:    #
#==========================#
dbus-update-activation-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=river
#==========================#
# Background Daemon:       #
#==========================#
wbg ~/pix/wallpapers/FANTASY.png &
wlsunset &
#==========================#
# output Daemon:           #
#==========================#
kanshi &
#==========================#
#  APP Daemon              #
#==========================#
udiskie --smart-tray --notify --file-manager=spacefm --terminal=wezterm &
pipewire &
pipewire-pulse &
blueman-applet &
nm-applet &
fnott &

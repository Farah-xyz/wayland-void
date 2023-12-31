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
# Output Daemon:           #
#==========================#
kanshi &
#==========================#
#  App Daemon              #
#==========================#
udiskie --smart-tray --terminal=wezterm &
pipewire &
pipewire-pulse &
blueman-applet &
nm-applet &
fnott &

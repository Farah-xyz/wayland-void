#!/bin/bash
#==========================#
# For capturing screen:    #
#==========================#
dbus-update-activation-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=river &
#==========================#
# Background Daemon:       #
#==========================#
killall wbg;wbg ~/pix/wallpapers/LINK.png &
killall wlsunset;wlsunset &
#==========================#
#  App Daemon              #
#==========================#
pipewire &
pipewire-pulse &
killall waybar;waybar &
killall kanshi;kanshi &
killall fnott;fnott &
killall udiskie;udiskie &
killall blueman-applet;blueman-applet &
killall nm-applet;nm-applet --no-agent &

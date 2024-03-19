#!/bin/bash
#==========================#
# For capturing screen:    #
#==========================#
dbus-update-activation-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway &
#==========================#
#  App Daemon              #
#==========================#
killall fnott;fnott &
killall udiskie;udiskie &
killall pipewire;pipewire &
killall pipewire-pulse;pipewire-pulse &

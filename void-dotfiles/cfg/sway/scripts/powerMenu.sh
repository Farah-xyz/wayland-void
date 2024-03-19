#!/bin/bash

options=$(printf "  Power Off\n  Reboot\n  Suspend\n  Hibernate\n󰗽  Log Out\n  Lock")

selected=$(echo -e "$options" | fuzzel --dmenu --lines 6)

case "$selected" in
	"  Power Off") doas poweroff ;;
	"  Reboot") doas reboot ;;
	"  Suspend") doas zzz ;;
	"  Hibernate") doas zzz ;;
	"󰗽  Log Out") riverctl exit ;;
	"  Lock") waylock -init-color 0x1d2021;;
	*) exit 1 ;;
esac

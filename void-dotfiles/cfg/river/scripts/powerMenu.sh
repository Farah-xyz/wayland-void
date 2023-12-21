#!/bin/bash

options=$(printf "  Power Off\n  Restart\n  Suspend\n  Hibernate\n󰗽  Log Out\n  Lock")

selected=$(echo -e "$options" | fuzzel --dmenu --lines 6)

case "$selected" in
	"  Power Off") doas poweroff ;;
	"  Restart") doas reboot ;;
	"  Suspend") doas zzz ;;
	"  Hibernate") doas zzz ;;
	"󰗽  Log Out") riverctl exit ;;
	"  Lock") swaylock -c 11121D;;
	*) exit 1 ;;
esac

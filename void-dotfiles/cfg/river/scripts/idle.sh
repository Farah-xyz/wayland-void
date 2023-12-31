#!/bin/bash
exec swayidle -w \
	timeout 100 "waylock -init-color 0x1d2021 -input-color 0xd79921 -fail-color 0xcc241d" \
	timeout 100 "wlr-randr --output eDP-1 --off" resume "wlr-randr --output eDP-1 --on" \
    before-sleep "doas zzz"

#!/bin/bash
recorder_all="Recorder All"
recorder_area="Recorder Area"

# Store each option in a single string seperated by newlines.
options="$recorder_all\n"
options+="$recorder_area\n"

# Prompt the user with fuzzel
choice="$(echo -e "$options" | fuzzel --dmenu --lines 2)"

## Make sure that all vedioes are saved in the vids folder.
path="$HOME/pix/screenshots/"

case $choice in
    $recorder_all)
        wf-recorder --audio --file=$(xdg-user-dir VIDEOS)/$(date +'recording_%Y-%m-%d-%H%M%S.mp4')
        ;;
    $recorder_area)
        wf-recorder -g "$(slurp)" --audio --file=$(xdg-user-dir VIDEOS)/$(date +'recording_area_%Y-%m-%d-%H%M%S.mp4')
        ;;
esac

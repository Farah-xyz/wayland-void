#!/bin/bash
recorder_all_with_voice="Recorder All Screen With Audio"
recorder_all_without_voice="Recorder All Screen Without Audio"
recorder_area_with_voice="Recorder Area With Voice"
recorder_area_without_voice="Recorder Area Without Voice"

# Store each option in a single string seperated by newlines.
options="$recorder_all_with_voice\n"
options+="$recorder_all_without_voice\n"
options+="$recorder_area_with_voice\n"
options+="$recorder_area_without_voice\n"

# Prompt the user with fuzzel
choice="$(echo -e "$options" | fuzzel --dmenu --lines 4)"

## Make sure that all vedioes are saved in the vids folder.
path="$HOME/pix/screenshots/"

case $choice in
    $recorder_all_with_voice)
        wf-recorder --audio --file=$(xdg-user-dir VIDEOS)/$(date +'recording_%Y-%m-%d-%H%M%S.mp4')
        ;;
    $recorder_all_without_voice)
        wf-recorder --file=$(xdg-user-dir VIDEOS)/$(date +'recording_%Y-%m-%d-%H%M%S.mp4')
        ;;
    $recorder_area_with_voice)
        wf-recorder -g "$(slurp)" --audio --file=$(xdg-user-dir VIDEOS)/$(date +'area_recording_%Y-%m-%d-%H%M%S.mp4')
        ;;
    $recorder_area_without_voice)
        wf-recorder -g "$(slurp)" --file=$(xdg-user-dir VIDEOS)/$(date +'area_recording_%Y-%m-%d-%H%M%S.mp4')
        ;;
esac

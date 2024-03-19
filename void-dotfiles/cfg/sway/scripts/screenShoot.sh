#!/bin/bash

screenshot_all_displays="Screenshot All Displays"
screenshot_area_of_display="Screenshot Area Of Display "
screenshot_area_and_edit="Screenshot Area And Edit"

# Store each option in a single string seperated by newlines.
options="$screenshot_all_displays\n"
options+="$screenshot_area_of_display\n"
options+="$screenshot_area_and_edit\n"

# Prompt the user with fuzzel.
choice="$(echo -e "$options" | fuzzel --dmenu --lines 3)"

## Make sure that all pictures are saved in the screenshots folder.
path="$HOME/pix/screenshots/"

case $choice in
    $screenshot_all_displays)
        grim $(xdg-user-dir PICTURES)/screenshots/$(date +'%Y%m%d-%H%M%S_grim.png')
        ;;
    $screenshot_area_of_display)
        grim -g "$(slurp)" $(xdg-user-dir PICTURES)/screenshots/$(date +'%Y%m%d-%H%M%S_grim_area.png')
        ;;
    $screenshot_area_and_edit)
        grim -g "$(slurp)" - | swappy -f -
        ;;
esac

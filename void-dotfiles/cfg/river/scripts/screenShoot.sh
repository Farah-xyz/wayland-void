#!/bin/bash

screenshot_copy_all_displays="Screenshot all displays to clipboard"
screenshot_all_displays_to_file="Screenshot all displays to file"
screenshot_copy_area="Screenshot area to clipboard"
screenshot_area_to_file="Screenshot area to file"
screenshot_area_and_edit="Screenshot Area to file And Edit"

# Store each option in a single string seperated by newlines.
options="$screenshot_copy_all_displays\n"
options+="$screenshot_all_displays_to_file\n"
options+="$screenshot_copy_area\n"
options+="$screenshot_area_to_file\n"
options+="$screenshot_area_and_edit\n"

# Prompt the user with fuzzel.
choice="$(echo -e "$options" | fuzzel --dmenu --lines 5)"

## Make sure that all pictures are saved in the screenshots folder.
path="$HOME/pix/screenshots/"

case $choice in
    $screenshot_copy_all_displays)
        grim - | wl-copy
        ;;
    $screenshot_all_displays_to_file)
        grim $(xdg-user-dir PICTURES)/screenshots/$(date +'%s_grim.png')
        ;;
    $screenshot_copy_area)
        grim -g "$(slurp)" - | wl-copy
        ;;
    $screenshot_area_to_file)
        grim -g "$(slurp)" $(xdg-user-dir PICTURES)/screenshots/$(date +'%s_grim_area.png')
        ;;
    $screenshot_area_and_edit)
        grim -g "$(slurp)" - | swappy -f -
        ;;
esac

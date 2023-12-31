#!/bin/sh
sudo xbps-install -Sy base-devel xtools mesa-dri vulkan-loader mesa-vulkan-intel intel-video-accel \
    wayland xorg-server-xwayland elogind river kanshi wlr-randr wvkbd lswt wbg waylock Waybar swayidle \
    qutebrowser firefox foot wezterm fuzzel grim slurp swappy fnott obs wf-recorder xdg-desktop-portal-wlr \
    font-awesome dejavu-fonts-ttf noto-fonts-ttf noto-fonts-ttf-extra noto-fonts-cjk noto-fonts-emoji \
    nnn udiskie imv mpv yt-dlp aria2 ffmpeg libsixel-util zathura zathura-pdf-mupdf \
    neovim lazygit cava fzf fd ripgrep zoxide jq eza bat glow wl-clipboard trash-cli man-db brightnessctl wlsunset ImageMagick calcurse \
    gvfs gvfs-mtp gvfs-smb gvfs-afc gvfs-gphoto2 \
    NetworkManager network-manager-applet \
    bluez libspa-bluetooth blueman \
    pipewire wireplumber alsa-pipewire pavucontrol \
    xdg-user-dirs xdg-utils bash-completion opendoas starship btop \
    qt5-wayland qt6-wayland qt5ct qt6ct kvantum flatpak \
    rust nodejs python3 python3-pip python3-devel \
    atool psmisc acl-progs bind-utils

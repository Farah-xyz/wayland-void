#!/bin/sh
echo " ##################################################################"
echo " #############   The Environment Is Ready  ########################"
echo " ##################################################################"
rm -rf ~/.config 2> /dev/null
mkdir -p ~/{.config,.local/share}
cd && mv wayland-void ~/.local/

echo "#########################################"
echo "###### Link My Dotfiles Programme #######"
echo "#########################################"
echo "===========> In ~/.config <================"
ln -sf ~/.local/wayland-void/void-dotfiles/bin ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/river ~/.config/ && chmod +x ~/.config/river/init
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/waybar ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/foot ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/wezterm ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/fnott ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/fuzzel ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/nnn ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/nvim ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/mpv ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/yt-dlp ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/aria2 ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/ripgrep ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/imv ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/zathura ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/gtk-3.0 ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/gtk-4.0 ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/qt5ct ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/qt6ct ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/Kvantum ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/btop ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/cava ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/calcurse ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/lazygit ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/qutebrowser ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/cfg/user-dirs.dirs ~/.config/
ln -sf ~/.local/wayland-void/void-dotfiles/prompt/starship.toml ~/.config/
echo "=========> In ~/.local/share <============="
ln -sf ~/.local/wayland-void/void-dotfiles/fonts ~/.local/share/
ln -sf ~/.local/wayland-void/void-dotfiles/icons ~/.local/share/
ln -sf ~/.local/wayland-void/void-dotfiles/themes ~/.local/share/
echo "===============> In ~/ <==================="
ln -sf ~/.local/wayland-void/void-dotfiles/pix/wallpapers ~/
ln -sf ~/.local/wayland-void/void-dotfiles/bsh/.bashrc ~/
ln -sf ~/.local/wayland-void/void-dotfiles/bsh/.bash_profile ~/
ln -sf ~/.local/wayland-void/void-dotfiles/others/.npmrc ~/
ln -sf ~/.local/wayland-void/void-dotfiles/git/.gitconfig ~/

echo "#########################################"
echo "######    Directory In HOME       #######"
echo "#########################################"
mkdir -p ~/{desk,dl,dox,music,prjcts,vids,pub}
rm -rf ~/Desktop/ Documents/ Downloads/ Music/ Pictures/ Public/ Templates/ Videos/ 2> /dev/null

echo "########################################"
echo "######     managment Services   ########"
echo "########################################"
sudo rm /var/service/wpa_supplicant 2> /dev/null
sudo rm /var/service/acpid 2> /dev/null
sudo ln -s /etc/sv/dbus /var/service/
sudo ln -s /etc/sv/elogind /var/service/
sudo ln -s /etc/sv/NetworkManager /var/service/
sudo ln -s /etc/sv/bluetoothd /var/service/

echo "########################################"
echo "#####     Others Configurations  #######"
echo "########################################"
# Pipewire Wireplumper pipewire-pulse alsa-pipewire: #
#====================================================#
## Wireplumper And Pipweire-pulse
sudo mkdir -p /etc/pipewire/pipewire.conf.d
sudo ln -s /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/
sudo ln -s /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d/
## Alsa
sudo mkdir -p /etc/alsa/conf.d
sudo ln -s /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d
sudo ln -s /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d
# Using doas Like sudo Without Password: #
#========================================#
sudo bash -c  "echo 'permit nopass lli as root' > /etc/doas.conf"
# Added Execute To Binary File:    #
#==================================#
sudo chmod +x ~/.local/wayland-void/void-dotfiles/bin/*
sudo chmod +x ~/.local/wayland-void/void-dotfiles/cfg/river/scripts/*
sudo chmod +x ~/.local/wayland-void/void-dotfiles/cfg/nnn/plugins/*

echo "########################################"
echo "#### Add the Flathub repository   ######"
echo "########################################"
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo "###########     DONE    #################"

####################################
####---------- WAYLAND ----------###
####################################
export GDK_BACKEND=wayland
export XDG_SESSION_TYPE=wayland
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_SCALE_FACTOR=1
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export WLR_NO_HARDWARE_CURSORS=1
export MOZ_ENABLE_WAYLAND=1

####################################
####---------- EXPORTS ----------###
####################################
export TERMINAL="foot"
export BROWSER="firefox"
export PAGER="less"
export EDITOR="nvim"
export VISUAL="nvim"
export MYVIMRC="$HOME/.config/nvim/init.lua"

#####################################
####---------- APP ENV  ----------###
#####################################
export IPYTHONDIR="$HOME/.cache/ipython_config"
export JUPYTER_CONFIG_DIR="$HOME/.cache/jupyter_config"
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/rc"
export XDEB_PKGROOT=${HOME}/.config/xdeb

#####################################
###--------- SHELL OPTIONS -------###
#####################################
set -o vi
shopt -s cdable_vars
shopt -s autocd
shopt -s cdspell
shopt -s dirspell
shopt -s dotglob
shopt -s extglob
shopt -s no_empty_cmd_completion
shopt -s nocaseglob
shopt -s histappend

#####################################
###------------ PROMPT -----------###
#####################################
eval "$(starship init bash)"

#####################################
###------------ ZOXIDE -----------###
#####################################
eval "$(zoxide init bash)"

#####################################
###------------ ALIASES ----------###
#####################################
# Changing "ls" to "eza"
alias ls="eza --long --group --icons=auto --git --sort=name --group-directories-first"
alias ll="eza --long --group --icons=auto --git --sort=name --group-directories-first"
alias lt="eza --long --group --icons=auto --git --only-dirs --tree --level=3 --sort=modified"
## NeoVim To Vim
alias v="nvim"
alias vi="nvim"
alias nv="nvim"
alias vn="nvim"
alias vim="nvim"
# Github Command
alias g="git"
alias gs="g status -s"
alias ga="g add -A"
alias gcl="g clone"
alias gc="g commit -m"
alias gd="g diff"
alias gl="g log"
alias gp="g push -uf origin main"
alias lg="lazygit"
# Img Viewr libsixel
alias sx="img2sixel --width=40% --height=30%"
alias sxl="lsix"
alias sxg="vimiv --recursive"
## Xbps Pkg Manager
alias pu="tmux new -s UPDATE -d 'doas xbps-install -Syu xbps && doas xbps-install -Syu'"
alias pi="doas xbps-install -S"
alias pr="doas xbps-remove -R"
alias pq="xbps-query -Rs"
alias pl="xbps-query -l"
alias pclean="doas rm -rf /var/cache/xbps/*"
## Flatpak PKG Manager
alias flat-update="flatpak update -y"
alias flat-install="flatpak install -y --or-update flathub"
alias flat-remove="flatpak uninstall -y --force-remove --delete-data --noninteractive"
alias flat-orphans-remove="flatpak uninstall -y --unused --noninteractive"
alias flat-all-remove="flatpak uninstall -y --all --delete-data --noninteractive"
## Power Management
alias poweroff="doas poweroff"
alias shutdown="doas shutdown"
alias reboot="doas reboot"
alias zzz="doas zzz"
## For Configs Files
alias recompile="cd ~/.local/wayland-void/void-dotfiles/cfg/wayland-suckless/dwl && doas make clean install"
alias sucks="cd ~/.local/wayland-void/void-dotfiles/cfg/wayland-suckless/"
alias dots="cd ~/.local/wayland-void/"
alias nvimc="nvim ~/.config/nvim/init.lua"
alias riverc="nvim ~/.config/river/init"
alias swayc="nvim ~/.config/sway/config"
alias footc="nvim ~/.config/foot/foot.ini"
alias bashc="nvim ~/.bashrc"
alias starc="nvim ~/.config/starship.toml"
alias code='flatpak run com.visualstudio.code'
# Yt-dlp Configs Files
alias yt-music="yt-dlp --config-locations $HOME/.config/yt-dlp/music"
alias yt-vedio="yt-dlp --config-locations $HOME/.config/yt-dlp/config"
#####################################
###------- NNN File Manager ------###
#####################################
export NNN_USE_EDITOR=1
export NNN_TRASH=1
export NNN_OPTS='RUc'
export NNN_COLORS="2136"
export NNN_CONTEXT_COLORS="5132"
export NNN_TERMINAL="foot"
export NNN_FIFO="/tmp/nnn.fifo"
export NNN_OPENER="$HOME/.config/nnn/plugins/nuke"
export NNN_PLUG="m:nmount;M:mtpmount;e:suedit;n:bulknew;P:rsynccp;z:autojump;o:fzopen;b:boom;l:imgview;k:pskill;p:preview-tui;x:xdgdefault;*:togglex"
export NNN_BMS="m:/run/media/$USER;M:/run/user/$UID/gvfs;w:$HOME/pix/wallpapers;v:$HOME/vids/programming/;n:$HOME/.config/nvim;d:$HOME/.local/wayland-void/"
#####################################
###-----Source fzf keybindingd----###
#####################################
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
export FZF_DEFAULT_COMMAND="fd --type file --exclude '*.pyc'"
export FZF_DEFAULT_OPTS="--height=90% --layout=reverse --info=inline --margin=1 --padding=1 --border=bold"
alias run_in_nvim="fzf --multi --bind 'enter:become(nvim {+})'"
alias run_in_mpv="fd 'mp4' | fzf --multi --bind 'enter:become(mpv {+})'"
bind '"\C-v":"run_in_nvim\n"'
bind '"\C-p":"run_in_mpv\n"'
#####################################
###-------Tab Completions --------###
#####################################
# If there are multiple matches for completion, Tab should cycle through them
bind 'TAB:menu-complete'
# And Shift-Tab should cycle backwards
bind '"\e[Z": menu-complete-backward'
# Display a list of the matching files
bind "set show-all-if-ambiguous off"
# Perform partial (common) completion on the first Tab press, only start
# cycling full results on the second Tab press (from bash version 5)
bind "set menu-complete-display-prefix on"
# Ignore Hidden Files
bind 'set match-hidden-files off'
#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

#####################################
###---------- System Path  -------###
#####################################
NPM_PACKAGES="${HOME}/.local/share/npm-packages"
export PATH="$PATH:$HOME/.config/bin:$HOME/.cargo/bin:$HOME/.local/bin:$NPM_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

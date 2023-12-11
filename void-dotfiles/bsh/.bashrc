####################################
####---------- WAYLAND ----------###
####################################
export MOZ_ENABLE_WAYLAND=1
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct
export GDK_BACKEND=wayland,x11
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=river

####################################
####---------- EXPORTS ----------###
####################################
export TERMINAL="foot"
export BROWSER="firefox"
export EDITOR="nvim"
export VISUAL="nvim"
export MYVIMRC="$HOME/.config/nvim/init.lua"
export VIMINIT="source $MYVIMRC"

#####################################
####---------- APP ENV  ----------###
#####################################
export IPYTHONDIR="$HOME/.cache/ipython_config"
export JUPYTER_CONFIG_DIR="$HOME/.cache/jupyter_config"

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
###------------ ALIASES ----------###
#####################################
# Changing cp & mv to cpg & mvg
alias cp="cpg -rfg"
alias mv="mvg -fg"
# Changing "ls" to "eza"
alias ls="eza --long --group --icons=auto --git --sort=name --group-directories-first"
alias ll="eza --long --group --icons=auto --git --sort=name --group-directories-first"
alias lt="eza --long --group --icons=auto --git --only-dirs --tree --level=3 --sort=modified"
## NeoVim To Vim
alias v="nvim"
alias vi="nvim"
alias nv="nvim"
alias vim="nvim"
# Img Viewr libsixel
alias sx="img2sixel --width=20% --height=20%"
alias lsx="lsix"
# Others Tools
alias lg="lazygit"
## Xbps Pkg Manager
alias pu="doas xbps-install -Su xbps && doas xbps-install -u"
alias pi="doas xbps-install -S"
alias pr="doas xbps-remove -R"
alias pq="xbps-query -Rs"
alias pl="xbps-query -l"
alias pclean="doas rm -rf /var/cache/xbps/*"
## Flatpak PKG Manager
alias flat-update="flatpak update -y"
alias flat-install="flatpak install -y --or-update --noninteractive flathub"
alias flat-remove="flatpak uninstall -y --force-remove --delete-data --noninteractive"
alias flat-orphans-remove="flatpak uninstall -y --unused --noninteractive"
alias flat-all-remove="flatpak uninstall -y --all --delete-data --noninteractive"
## Power Management
alias poweroff="doas poweroff"
alias shutdown="doas shutdown"
alias reboot="doas reboot"
## for configs File
alias dots="cd ~/.local/wayland-void/"
alias nvimc="nvim ~/.config/nvim/init.lua"
alias riverc="nvim ~/.config/river/init"
alias footc="nvim ~/.config/foot/foot.ini"
alias bashc="nvim ~/.bashrc"
alias starc="nvim ~/.config/starship.toml"
# yt-dlp Alias
alias dl-vids='yt-dlp \
    --downloader aria2c \
    --no-playlist \
    --no-warnings \
    --ignore-errors \
    --quiet \
    --progress \
    --format "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4] / bv*+ba/b" \
    --output "~/vids/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" \
'
alias dl-playlist='yt-dlp \
    --downloader aria2c \
    --yes-playlist \
    --no-warnings \
    --ignore-errors \
    --quiet \
    --progress \
    --format "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4] / bv*+ba/b" \
    --output "~/vids/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" \
'
#####################################
###------- NNN File Manager ------###
#####################################
export NNN_OPTS='Rrcd'
export NNN_COLORS="2136"
export NNN_CONTEXT_COLORS="5132"
export NNN_USE_EDITOR=1
export NNN_TRASH=1
export NNN_PLUG='c:fzcd;o:fzopen;i:imgview'

#####################################
###-----Source fzf keybindingd----###
#####################################
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
export FZF_DEFAULT_COMMAND="fd --type file --exclude '*.pyc'"
export FZF_DEFAULT_OPTS="--height=90% --layout=reverse --info=inline --margin=1 --padding=1 --border=bold"
alias run_in_mpv="fzf --multi --bind 'enter:become(mpv {+})'"
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
PATH="$PATH:/sbin:${HOME}/.local/bin:${HOME}/.config/bin"
NPM_PACKAGES="${HOME}/.local/share/npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

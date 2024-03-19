//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	                    /*Command*/		                                            /*Update Interval*/	/*Update Signal*/
    {"", "/home/lli/.local/wayland-void/void-dotfiles/cfg/wayland-suckless/someblocks/scripts/NET.sh",    1,               0},
    {"", "/home/lli/.local/wayland-void/void-dotfiles/cfg/wayland-suckless/someblocks/scripts/VOL.sh",    1,               0},
    {"", "/home/lli/.local/wayland-void/void-dotfiles/cfg/wayland-suckless/someblocks/scripts/BAT.sh",    1,               0},
    {"", "/home/lli/.local/wayland-void/void-dotfiles/cfg/wayland-suckless/someblocks/scripts/DATE.sh",   1,               0},

};
//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " ";
static unsigned int delimLen = 5;

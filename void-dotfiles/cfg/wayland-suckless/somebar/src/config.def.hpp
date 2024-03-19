// somebar - dwl bar
// See LICENSE file for copyright and license details.

#pragma once
#include "common.hpp"

constexpr bool topbar = true;

constexpr int paddingX = 18;
constexpr int paddingY = 1;

// See https://docs.gtk.org/Pango/type_func.FontDescription.from_string.html
constexpr const char* font = "JetBrainsMono Nerd Font Bold 12";

constexpr ColorScheme colorInactive = {Color(0xeb, 0xdb, 0xb2), Color(0x1d, 0x20, 0x21)};
constexpr ColorScheme colorActive = {Color(0x1d, 0x20, 0x21), Color(0x68, 0x9d, 0x6a)};
constexpr const char* termcmd[] = {"foot", nullptr};

/* static std::vector<std::string> tagNames = { "1", "2", "3", "4", "5", "6", "7", "8", "9", }; */
static std::vector<std::string> tagNames = {"", "", "", "", ""};
constexpr Button buttons[] = {
	{ ClkStatusText,   BTN_RIGHT,  spawn,      {.v = termcmd} },
};

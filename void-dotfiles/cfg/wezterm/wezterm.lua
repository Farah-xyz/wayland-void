local wezterm = require 'wezterm';
return {
-----------------------------------------------------------
-- For Support right to left languages like arabic
-----------------------------------------------------------
  bidi_enabled = true,
  bidi_direction = "LeftToRight",
-----------------------------------------------------------
-- Fonts Configurations:
-----------------------------------------------------------
  font = wezterm.font("JetBrainsMono NF", {weight="Medium", stretch="Normal", style="Normal"}),
  font_size = 11.0,
  font_rules = {
    {
      italic = true,
      font = wezterm.font("JetBrainsMono NF", {weight="Medium", stretch="Normal", style="Italic"}),
    },
    {
      intensity = "Bold",
      font = wezterm.font("JetBrainsMono NF", {weight="Bold", stretch="Normal", style="Normal"}),
    },
    {
      intensity = "Bold",
      italic = true,
      font = wezterm.font("JetBrainsMono NF", {weight="Bold", stretch="Normal", style="Italic"})
    },
  },
-----------------------------------------------------------
-- Colorscheme Configurations:
-----------------------------------------------------------
  color_scheme = "Gruvbox dark, hard (base16)",
  colors = {
		indexed = {[16] = "#F8BD96", [17] = "#F5E0DC"},
		split = "#161320",
		visual_bell = "#302D41",
	},
-----------------------------------------------------------
-- Window Configurations:
-----------------------------------------------------------
  window_padding = {
    left = 15,
    right = 15,
    top = 10,
    bottom = 0,
  },
  window_background_opacity = 1.0,
  window_decorations = "RESIZE",
-----------------------------------------------------------
-- Tab Configurations:
-----------------------------------------------------------
  enable_tab_bar = false,
-----------------------------------------------------------
-- ScrollBar Configurations:
-----------------------------------------------------------
  scrollback_lines = 5000,
  enable_scroll_bar = false,
  check_for_updates = false,
}

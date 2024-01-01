local wezterm = require 'wezterm';
return {
  bidi_enabled = true,
  bidi_direction = "AutoLeftToRight",
  font_size = 11.0,
  font = wezterm.font("JetBrainsMono Nerd Font"),
  color_scheme = "Gruvbox dark, hard (base16)",
  window_decorations = "RESIZE",
  window_background_opacity = 1,
  window_padding = {
    left = 5,
    right = 5,
    top = 5,
    bottom = 0,
  },
  enable_tab_bar = false,
  scrollback_lines = 5000,
  enable_scroll_bar = false,
  check_for_updates = false,
}

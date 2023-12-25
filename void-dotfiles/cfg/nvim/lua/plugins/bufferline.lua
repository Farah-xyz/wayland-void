-----------------------------------------------------------
-- Bufferline
-----------------------------------------------------------
require("bufferline").setup {
      options = {
        highlights = {
                fill = {
                    fg = "#b8bb26",
                    bg = "#1d2021",
                },
                background = {
                    fg = "#f9f5d7",
                    bg = "#1d2021",
                },
                tab = {
                    fg = "#fe8019",
                    bg = "#1d2021",
                },
                tab_selected = {
                    fg = "#fe8019",
                    bg = "#1d2021",
                },
        },
        offsets = {
            {
                filetype = "NvimTree",
                text="FILE EXPLORER",
                separator= true,
                text_align = "center"
            }
          },
          diagnostics = "nvim_lsp",
          separator_style = {"", ""},
          modified_icon = '●',
          show_close_icon = false,
          show_buffer_close_icons = false,
      }

}

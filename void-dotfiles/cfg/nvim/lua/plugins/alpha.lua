-----------------------------------------------------------
-- Dashboard
-----------------------------------------------------------
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
  "           ▄ ▄                   ",
  "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
  "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
  "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
  "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
  "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
  "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
  "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
  "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
}

-- Set menu
dashboard.section.buttons.val = {
  dashboard.button("SPC ee", "  > File Exploer", "<cmd>NvimTreeToggle<CR>"),
  dashboard.button("SPC eo", "  > Fille Manager", "<cmd>Oil<CR>"),
  dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
  dashboard.button("SPC fo", "  > Find Old_Files", "<cmd>Telescope oldfiles<CR>"),
  dashboard.button("SPC qq", "  > Quit Nvim", "<cmd>qa!<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

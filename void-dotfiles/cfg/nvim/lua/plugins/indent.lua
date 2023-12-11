-----------------------------------------------------------
-- Indent-Line
-----------------------------------------------------------
local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowTeal",
    "RainbowGreen",
    "RainbowOrange",
    "RainbowCyan",
}
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
require("ibl.hooks") .register(require("ibl.hooks").type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#ea6962" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#fabd2f" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#458588" })
    vim.api.nvim_set_hl(0, "RainbowTeal", { fg = "#8ec07c" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#b8bb26" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#e78a4e" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#83a598" })
end)

require('ibl').setup{
    indent = {
        char = "│",
        tab_char = "│",
        highlight = highlight,
    },
    scope = {
        enabled = false,
    },
    vim.opt.listchars:append("space: "),
}
require('mini.indentscope').setup{
        symbol = "┃",
        options = { try_as_border = true },
}

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "help",
        "alpha",
        "dashboard",
        "neo-tree",
        "Trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
    },
    callback = function()
        vim.b.miniindentscope_disable = true
    end,
})

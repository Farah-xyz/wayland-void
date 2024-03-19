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
    indent = { char = "│", tab_char = "│", highlight = highlight, },
    scope = { enabled = false, },
    exclude = {
        filetypes = {
          'lspinfo',
          'packer',
          'checkhealth',
          'help',
          'man',
          'dashboard',
          'git',
          'markdown',
          'text',
          'terminal',
          'NvimTree',
        },

        buftypes = {
          'terminal',
          'nofile',
          'quickfix',
          'prompt',
        },
    },
    vim.opt.listchars:append("space: "),
}
-----------------------------------------------------------
-- Mini Indnent
-----------------------------------------------------------
require('mini.indentscope').setup{
        -- Which character to use for drawing scope indicator
        symbol = "┃",
          -- Options which control scope computation
        options = {
              -- Type of scope's border: which line(s) with smaller indent to
              -- categorize as border. Can be one of: 'both', 'top', 'bottom', 'none'.
              border = 'both',

              -- Whether to use cursor column when computing reference indent.
              -- Useful to see incremental scopes with horizontal cursor movements.
              indent_at_cursor = true,

              -- Whether to first check input line to be a border of adjacent scope.
              -- Use it if you want to place cursor on function header to get scope of
              -- its body.
              try_as_border = false,
        },
          -- Module mappings. Use `''` (empty string) to disable one.
        mappings = {
          -- Textobjects
          object_scope = 'ii',
          object_scope_with_border = 'ai',

          -- Motions (jump to respective border line; if not present - body line)
          goto_top = '[i',
          goto_bottom = ']i',
        },

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
        "NvimTree",
        "notify",
        "toggleterm",
        "lazyterm",
    },
    callback = function()
        vim.b.miniindentscope_disable = true
    end,
})

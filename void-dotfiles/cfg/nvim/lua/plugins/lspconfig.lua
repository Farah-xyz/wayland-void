-----------------------------------------------------------
-- Neovim Mason
-----------------------------------------------------------
require("mason").setup {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
}
require("mason-lspconfig").setup{
    -- auto-install configured servers (with lspconfig)
    automatic_installation = true,
    -- list of servers for mason to install
    ensure_installed = {
        "emmet_ls",
        "html",
        "cssls",
        "tailwindcss",
        "tsserver",
        "eslint",
        "bashls",
        "pyright",
        "lua_ls",
    },
}
-----------------------------------------------------------
-- Neovim Lspsaga
-----------------------------------------------------------
local lspsaga = require("lspsaga")
lspsaga.setup({
    debug = false,
    use_saga_diagnostic_sign = true,
    -- diagnostic sign
    error_sign = "",
    warn_sign = "",
    hint_sign = "",
    infor_sign = "",
    diagnostic_header_icon = "   ",
    -- code action title icon
    code_action_icon = " ",
    code_action_prompt = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
    finder_definition_icon = "  ",
    finder_reference_icon = "  ",
    max_preview_lines = 10,

    finder_action_keys = {
        open = "o",
        vsplit = "s",
        split = "i",
        quit = "q",
        scroll_down = "<C-f>",
        scroll_up = "<C-b>",
    },

    hover = {
        max_width = 0.7,
    },

    code_action_keys = { quit = "q", exec = "<CR>" },
    rename_action_keys = { quit = "<C-c>", exec = "<CR>" },
    definition_preview_icon = "  ",
    border_style = "single",
    rename_prompt_prefix = "➤",
    server_filetype_map = {},
    diagnostic_prefix_format = "%d. ",
})
-----------------------------------------------------------
-- Neovim LSP
-----------------------------------------------------------
-- LSP Configuration
local lspconfig = require 'lspconfig'
local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
-- additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
-----------------------------------------------------------
-- Language
-----------------------------------------------------------
-- emmet language server
lspconfig.emmet_ls.setup({
    capabilities = capabilities,
    filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
})
-- html
lspconfig.html.setup({
    capabilities = capabilities,
})
-- css language server
lspconfig.cssls.setup {
    capabilities = capabilities,
}
-- javascript language server
lspconfig.eslint.setup {
    capabilities = capabilities,
}
lspconfig.tsserver.setup {
    capabilities = capabilities,
}
-- Bash language server
lspconfig.bashls.setup {
    capabilities = capabilities,
}
-- python language server
lspconfig.pyright.setup {
    capabilities = capabilities,
}
-- Lua language server
lspconfig.lua_ls.setup {
    capabilities = capabilities,
}

-----------------------------------------------------------
-- Neovim LSP configuration file
-----------------------------------------------------------
require("mason").setup{
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
        "pyright",
        "lua_ls",
    },
}
require'lspconfig'.emmet_ls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.tailwindcss.setup{}

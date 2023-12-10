-----------------------------------------------------------
-- Neovim Mason
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
        "eslint",
        "pyright",
        "lua_ls",
    },
}
-----------------------------------------------------------
-- Neovim LSP
-----------------------------------------------------------
local opts = { noremap = true, silent = true }
local on_attach = function(client, bufnr)
    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl',
        '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.format { async = true }<CR>', opts)
end

-- LSP Configuration
local lspconfig = require 'lspconfig'

-- additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
-----------------------------------------------------------
-- Language
-----------------------------------------------------------
-- emmet language server
lspconfig.emmet_ls.setup {
    capabilities = capabilities,
    filetypes = { "html" },
}
-- Html language server
lspconfig.html.setup {
    capabilities = capabilities,
    filetypes = { "html" },
}
-- css language server
lspconfig.cssls.setup {
    capabilities = capabilities,
}
-- javascript language server
lspconfig.eslint.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}
lspconfig.tsserver.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}
-- python language server
lspconfig.pyright.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}
-- Lua language server
lspconfig.pyright.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

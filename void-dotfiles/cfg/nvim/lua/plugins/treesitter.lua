-----------------------------------------------------------
-- Treesitter
-----------------------------------------------------------
require'nvim-treesitter.configs'.setup {
  auto_install = true,
  ensure_installed = {"bash", "html", "css", "javascript", "sql", "php", "json"},
  highlight = { enable = true },
  indent = { enable = true },
}

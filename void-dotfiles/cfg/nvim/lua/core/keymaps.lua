-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------
local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------
-- Rempas leader Keys
vim.g.mapleader = ' '
-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
-- Fast saving & Quite Nvim
map('n', '<leader>w', ':w<cr>')
map('n', '<leader>q', ':q!<cr>')
-- Fuzzy Finder
map('n', '<leader>ff', ':lua require("telescope.builtin").find_files()<cr>')
map('n', '<leader>fo', ':lua require("telescope.builtin").oldfiles()<cr>')
-- file Exploer
map('n', '<leader>ee', ':NvimTreeToggle<CR>')
map('n', '<leader>eo', ':Oil<CR>')
-- Buffers Management
map('n', '<tab>', ':bn<cr>')
map('n', '<s-tab>', ':bp<cr>')
-- Git Management
map('n', '<leader>a', ':Git add --all<cr>')
map('n', '<leader>s', ':Git status<cr>')
map('n', '<leader>c', ':Git commit -v -q<cr>')
map('n', '<leader>p', ':Git push -u origin main<cr>')
map('n', '<leader>d', ':Git diff<cr>')

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
-- Rempas leader keys
vim.g.mapleader = ' '
-- Disbaled keys in normal mode
map('n', '<Space>',    "<nop>")
map('n', '<Up>',       "<nop>")
map('n', '<Down>',     "<nop>")
map('n', '<Right>',    "<nop>")
map('n', '<left>',     "<nop>")
-- Toggle between window
map('n', '<C-h>',      "<C-w>h")
map('n', '<C-j>',      "<C-w>j")
map('n', '<C-k>',      "<C-w>k")
map('n', '<C-l>',      "<C-w>l")
-- Movment Down And Up
map('n', '<C-d>',      "<C-d>zz")
map('n', '<C-u>',      "<C-u>zz")
map('n', '<C-f>',      "<C-f>zt")
map('n', '<C-b>',      "<C-b>zb")
-- Fuzzy Finder
map('n', '<leader>ff', ":lua require('telescope.builtin').find_files()<cr>")
map('n', '<leader>fo', ":lua require('telescope.builtin').oldfiles()<cr>")
map('n', '<leader>fr', ":lua require('telescope.builtin').registers()<cr>")
map('n', '<leader>ft', ":lua require('telescope.builtin').colorscheme()<cr>")
-- file Exploer
map('n', '<leader>ee', ":NvimTreeFindFileToggle<CR>")
map('n', '<leader>eo', ":Oil<CR>")
-- Buffers Management
map("n", "<Tab>",      ":BufferLineCycleNext<cr>")
map("n", "<S-Tab>",    ":BufferLineCyclePrev<cr>")
map("n", "<C-Tab>",    ":BufferLinePick<cr>")
-- Git Management
map('n', '<leader>ga', ':Git add --all<cr>')
map('n', '<leader>gs', ':Git status<cr>')
map('n', '<leader>gc', ':Git commit -v -q<cr>')
map('n', '<leader>gp', ':Git push -u origin main<cr>')
map('n', '<leader>gd', ':Git diff<cr>')

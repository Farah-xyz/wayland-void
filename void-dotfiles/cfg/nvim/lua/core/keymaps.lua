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
-- Toggle between window
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
-- Unhighlight searched elements
map("n", "<leader>hl", ":nohlsearch<cr>")
-- Fast saving & Quite Nvim
map('n', '<leader>ww', ':w<cr>')
map('n', '<leader>qq', ':qa!<cr>')
-- Fuzzy Finder
map('n', '<leader>ff', ':lua require("telescope.builtin").find_files()<cr>')
map('n', '<leader>fo', ':lua require("telescope.builtin").oldfiles()<cr>')
-- file Exploer
map('n', '<leader>ee', ':NvimTreeFindFileToggle<CR>')
map('n', '<leader>eo', ':Oil<CR>')
-- Buffers Management
map("n", "<Tab>", ":BufferLineCycleNext<cr>")
map("n", "<S-Tab>", ":BufferLineCyclePrev<cr>")
-- Git Management
map('n', '<leader>ga', ':Git add --all<cr>')
map('n', '<leader>gs', ':Git status<cr>')
map('n', '<leader>gc', ':Git commit -v -q<cr>')
map('n', '<leader>gp', ':Git push -u origin main<cr>')
map('n', '<leader>gd', ':Git diff<cr>')

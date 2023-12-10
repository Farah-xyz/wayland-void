-----------------------------------------------------------
-- Tree
-----------------------------------------------------------
-- OR setup with some options
-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]])
vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 35,
    relativenumber = true,
  },
  renderer = {
    indent_markers = { enable = true, },
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "", -- arrow when folder is closed
          arrow_open = "",   -- arrow when folder is open
        },
      },
    },
  },
  filters = {
    dotfiles = true,
  },
  git = {
    ignore = false,
  },
})

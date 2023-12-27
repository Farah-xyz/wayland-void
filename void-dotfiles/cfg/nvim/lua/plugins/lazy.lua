-----------------------------------------------------------
-- Plugins
-----------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    { "nvim-lua/plenary.nvim" },
    { "nvim-tree/nvim-web-devicons" },
    { "goolord/alpha-nvim", event = "VimEnter" },
    { "stevearc/dressing.nvim", event = "VeryLazy" },
    { "ggandor/leap.nvim" },
    { "akinsho/toggleterm.nvim" },
    { "sainnhe/gruvbox-material" },
    { "yamatsum/nvim-cursorline" },
    { "arturgoms/moonbow.nvim" },
    { "nvimdev/galaxyline.nvim" },
    { "nvim-tree/nvim-tree.lua" },
    { "stevearc/oil.nvim" },
    { "nvim-telescope/telescope.nvim" },
    { "akinsho/bufferline.nvim" },
    { "lukas-reineke/indent-blankline.nvim" },
    { "echasnovski/mini.indentscope" },
    { "tpope/vim-surround" },
    { "tpope/vim-commentary" },
    { "tpope/vim-fugitive" },
    { "tpope/vim-repeat" },
    { "lewis6991/gitsigns.nvim" },
    { "norcalli/nvim-colorizer.lua" },
    { "windwp/nvim-autopairs" },
    { "windwp/nvim-ts-autotag" },
    { "nvim-treesitter/nvim-treesitter" },
    -- LSP
    { "neovim/nvim-lspconfig" },
    { "glepnir/lspsaga.nvim" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    -- CMP
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/nvim-cmp" },
    -- SNP
    { "L3MON4D3/LuaSnip" },             -- snippet engine
    { "saadparwaiz1/cmp_luasnip" },     -- for autocompletion
    { "rafamadriz/friendly-snippets" }, -- useful snippets
    { "onsails/lspkind.nvim" },         -- vs-code like pictograms
})

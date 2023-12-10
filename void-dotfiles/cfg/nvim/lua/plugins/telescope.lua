-----------------------------------------------------------
-- Autocommands
-----------------------------------------------------------
require("telescope").setup({
	pickers = {
		find_files = {
			theme = "dropdown",
		},
		oldfiles = {
			theme = "dropdown",
		},
		diagnostics = {
			theme = "dropdown",
		},
	},
	defaults = {
        path_display = { "truncate " },
		file_ignore_patterns = { "node_modules" },
        mappings = {
          i = {
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
            ["<C-j>"] = require("telescope.actions").move_selection_next,
          },
        },
    }
})

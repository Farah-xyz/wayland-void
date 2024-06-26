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
		registers = {
			theme = "dropdown",
		},
		colorscheme = {
			theme = "dropdown",
		},
		diagnostics = {
			theme = "dropdown",
		},
	},
    defaults = {
        layout_config = {
            width = 0.80,
            prompt_position = "top",
            preview_cutoff = 120,
            horizontal = { mirror = false },
            vertical = { mirror = false },
        },
        find_command = {
            "rg",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
        },
        prompt_prefix = "  ",
        selection_caret = "  ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        file_sorter = require("telescope.sorters").get_fuzzy_file,
        file_ignore_patterns = {},
        generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
        path_display = {},
        winblend = 0,
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        color_devicons = true,
        use_less = true,
        set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
        mappings = {
            i = {
                ["<C-k>"] = require("telescope.actions").move_selection_previous,
                ["<C-j>"] = require("telescope.actions").move_selection_next,
            },
        },
    },
})

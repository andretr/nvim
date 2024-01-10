return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")

			telescope.setup({
				defaults = {
					path_display = { "truncate " },
					mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous, -- move to prev result
							["<C-j>"] = actions.move_selection_next, -- move to next result
							["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						},
					},
				},
			})
			--        extensions = {
			--          ["ui-select"] = {
			--            require("telescope.themes").get_dropdown({}),
			--          },
			--        },

      telescope.load_extension("fzf")
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc = "Find files"})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {desc = "Grep text"})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {desc = "Search buffers"})
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {desc = "Show help"})

			--     require("telescope").load_extension("ui-select")
		end,
	},
	{
		--"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		-- For telescope overlay multiple choice
		"stevearc/dressing.nvim",
		event = "VeryLazy",
	},
}

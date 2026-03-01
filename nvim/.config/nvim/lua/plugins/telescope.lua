return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>fp", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>fr", builtin.registers, { desc = "List registers" })
			vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "List diagnostics" })
			require("telescope").load_extension("fzf")

			require("telescope").load_extension("live_grep_args")
			local live_grep_args_shortcuts = require("telescope-live-grep-args.shortcuts")
			vim.keymap.set(
				"n",
				"<leader>fw",
				live_grep_args_shortcuts.grep_word_under_cursor,
				{ desc = "Telescope live grep word under cursor" }
			)
			vim.keymap.set(
				"v",
				"fw",
				live_grep_args_shortcuts.grep_visual_selection,
				{ desc = "Telescope live grep word under cursor in visual mode" }
			)
		end,
	},
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-telescope/telescope-live-grep-args.nvim", build = "make" },
}

return {
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
		},

		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					-- lua
					null_ls.builtins.formatting.stylua,
					-- rust
					require("none-ls.formatting.rustfmt"),
					-- python
					null_ls.builtins.formatting.black,
					null_ls.builtins.formatting.isort,
					null_ls.builtins.diagnostics.pylint,

                    -- c
                    null_ls.builtins.formatting.clang_format,
				},
			})

			vim.keymap.set("n", "<leader>fc", vim.lsp.buf.format, { desc = "Format buffer" })
		end,
	},
}

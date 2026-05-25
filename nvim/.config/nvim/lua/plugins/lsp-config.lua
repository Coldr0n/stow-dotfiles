return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = { ensure_installed = { "lua_ls", "rust_analyzer", "pylsp", "jsonls", "texlab" } },
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- Configure servers (if custom config is needed)
			vim.lsp.config("lua_ls", {})
			vim.lsp.config("rust_analyzer", {})
			vim.lsp.config("pylsp", {})
			vim.lsp.config("jsonls", {})
			vim.lsp.config("texlab", {})

			-- Enable LSP servers
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("rust_analyzer")
			vim.lsp.enable("pylsp")
			vim.lsp.enable("jsonls")
			vim.lsp.enable("texlab")

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local opts = { buffer = args.buf }
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
					vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
					vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
				end,
			})
		end,
	},
}

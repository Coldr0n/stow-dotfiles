return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", "arkav/lualine-lsp-progress" },
		opts = {
			theme = "auto",
			sections = {
				lualine_c = {
					"lsp_progress", -- show lsp init progress 
				},
			},
		},
	},
	{
		"alvarosevilla95/luatab.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	},
	{
		"rcarriga/nvim-notify",
		init = function()
			vim.notify = require("notify")
		end,
		opts = { stages = "slide" },
	},
}

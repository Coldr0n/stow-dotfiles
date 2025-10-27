return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts_extend = { "ensure_installed" },
	opts = {
		highlight = { enable = true, disable = { "latex" } },
		auto_install = true,
	},

	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}

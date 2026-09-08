return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	opts_extend = { "ensure_installed" },
	opts = {
		auto_install = true,
	},

	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}

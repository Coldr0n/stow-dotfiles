local function make_transparent()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	"lmantw/themify.nvim",

	lazy = false,
	priority = 1000,

	opts = {
		{
			"catppuccin/nvim",
			after = make_transparent,
		},
		"samharju/synthweave.nvim",
		{
			"neanias/everforest-nvim",
			after = make_transparent,
		},
	},
}

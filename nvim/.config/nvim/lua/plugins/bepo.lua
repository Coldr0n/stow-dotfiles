return {
	"cljoly/bepo.nvim",
	priority = 1000,
	config = function()
		require("bepo").movement()
	end,
}

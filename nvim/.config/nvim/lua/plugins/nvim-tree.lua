local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")
    -- put default mappings
	api.map.on_attach.default(bufnr)

    -- remove unnecessary mapping that conflicts with bepo mapping
	vim.keymap.del("n", "s", { buffer = bufnr })
end

return {
	{
		"nvim-tree/nvim-tree.lua",
		init = function()
			-- disable netrw
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1
			vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle nvim tree" })
		end,
		opts = { on_attach = my_on_attach },
	},
}

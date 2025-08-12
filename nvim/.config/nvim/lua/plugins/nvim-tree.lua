return {
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            local api = require("nvim-tree.api")
            local function my_on_attach(bufnr)
                api.config.mappings.default_on_attach(bufnr)

                vim.keymap.del("n", "s", { buffer = bufnr })
            end

            vim.keymap.set("n", "<leader>e", api.tree.toggle, { desc = "Toggle nvim tree" })

            require("nvim-tree").setup({
                on_attach = my_on_attach,
            })
        end,
    },
}

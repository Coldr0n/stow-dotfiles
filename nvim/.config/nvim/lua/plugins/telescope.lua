return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>fp", builtin.find_files, { desc = "Telescope find files" })
            vim.keymap.set("n", "<leader>fl", builtin.live_grep, { desc = "Telescope live grep" })
            vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
            vim.keymap.set("n", "<leader>fr", builtin.registers, { desc = "List registers" })
            vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "List diagnostics" })
            require("telescope").load_extension("fzf")
        end,
    },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
}

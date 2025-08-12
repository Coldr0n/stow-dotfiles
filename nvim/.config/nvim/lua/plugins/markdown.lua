return {
    {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = { completion = { lsp = { enabled = true } } },
    },
    {
        "epwalsh/obsidian.nvim",
        version = "*",
        lazy = true,
        ft = "markdown",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = {
            ui = { enable = false },
            workspaces = {
                {
                    name = "personal",
                    path = "~/vaults/personal",
                },
                {
                    name = "work",
                    path = "~/vaults/work",
                },
            },
        },
    },
}

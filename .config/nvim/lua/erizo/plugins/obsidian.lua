return {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        workspaces = {
            {
                name = "fall-2024",
                path = "~/School/fall-2024/",
            },
        },

        follow_url_func = function(url)
            vim.fn.jobstart({ "xdg-open", url })
        end,
    },
}

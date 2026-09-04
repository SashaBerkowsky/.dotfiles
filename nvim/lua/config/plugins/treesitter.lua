-- treesitter
return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",

        config = function()
            local treesitter = require("nvim-treesitter")

            treesitter.setup({
                install_dir = vim.fn.stdpath("data") .. "/site",
            })

            treesitter.install({
                "lua",
                "c",
                "vim",
                "markdown",
                "javascript",
            })

            vim.api.nvim_create_autocmd("FileType", {
                pattern = {
                    "lua",
                    "c",
                    "vim",
                    "markdown",
                    "javascript",
                },
                callback = function()
                    vim.treesitter.start()
                end,
            })
        end,
    },
}

-- treesitter
return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",

        config = function()
            local treesitter = require("nvim-treesitter")

            local parsers = {
                "lua",
                "c",
                "cpp",
                "vim",
                "markdown",
                "javascript",
            }

            treesitter.setup({
                install_dir = vim.fn.stdpath("data") .. "/site",
            })

            treesitter.install(parsers)

            vim.api.nvim_create_autocmd("FileType", {
                pattern = parsers,
                callback = function()
                    vim.treesitter.start()
                end,
            })
        end,
    },
}

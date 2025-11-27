-- lualine
return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            options = {
                theme = "horizon"
            }
        },
        config = function(_, opts)
            require("lualine").setup(opts)
        end
    }
}

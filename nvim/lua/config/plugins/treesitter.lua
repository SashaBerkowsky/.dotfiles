-- treesitter
return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "lua", "c", "vim", "markdown", "prolog", "javascript" },
                auto_install = true,
                highlight = {
                    enable = true,
                    aditional_vim_regex_highlighting = false
                }
            })
        end
    }
}

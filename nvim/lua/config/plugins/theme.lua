-- theme
return {
    "rebelot/kanagawa.nvim",
    config = function()
        vim.cmd("colorscheme kanagawa")
        vim.cmd('hi! LineNr guibg=none ctermbg=none')

        -- remove telescope bg
        -- vim.cmd('hi! TelescopeBorder guibg=none ctermbg=none')
        -- vim.cmd('hi! TelescopeTitle guibg=none ctermbg=none')

        require("kanagawa").setup({
        })
    end
}

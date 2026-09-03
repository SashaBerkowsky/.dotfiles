-- treesitter
return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master", -- Pin to master for stable legacy module structure if needed
        build = ":TSUpdate",
        config = function()
            -- Safe require check to give a clear message if lazy loading fails
            local status, configs = pcall(require, "nvim-treesitter.configs")
            if not status then
                vim.notify("nvim-treesitter.configs could not be loaded", vim.log.levels.WARN)
                return
            end

            configs.setup({
                ensure_installed = { "lua", "c", "vim", "markdown", "prolog", "javascript" },
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false, -- Fixed typo (added missing 'd')
                },
            })
        end,
    }
}

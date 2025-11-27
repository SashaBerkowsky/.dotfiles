-- telescope
return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
    config = function()
        -- files
        vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags)
        vim.keymap.set("n", "<leader>fp", require("telescope.builtin").find_files)
        vim.keymap.set("n", "<leader>fn", function()
            local opts = require("telescope.themes").get_ivy({
                cwd = vim.fn.stdpath("config")
            })

            require("telescope.builtin").find_files(opts)
        end)

        -- git
        vim.keymap.set("n", "<leader>gst", require("telescope.builtin").git_stash)
        vim.keymap.set("n", "<leader>gs", require("telescope.builtin").git_status)
        vim.keymap.set("n", "<leader>gc", require("telescope.builtin").git_commits)

        require("telescope").setup({
            defaults = { file_ignore_patterns = { "node_modules", ".git" } }
        })
    end
}

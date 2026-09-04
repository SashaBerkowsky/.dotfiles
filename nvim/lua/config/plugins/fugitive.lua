return {
    "tpope/vim-fugitive",
    cmd = { "Git", "G", "Gdiffsplit", "Gvdiffsplit", "Gblame", "Gclog" },
    keys = {
        { "<leader>gs", "<cmd>Git<cr>", desc = "Git status" },
        { "<leader>gd", "<cmd>Gvdiffsplit<cr>", desc = "Diff current file (vertical)" },
        { "<leader>gD", "<cmd>Gvdiffsplit main<cr>", desc = "Diff current file vs main" },
        { "<leader>gb", "<cmd>Git blame<cr>", desc = "Git blame" },
        { "<leader>gl", "<cmd>0Gclog<cr>", desc = "File commit history" },
    },
}

-- open file manager
vim.keymap.set("n", "<leader>pv", "<cmd>Oil<CR>")

-- move lines upwards/downwards
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in the center of the screen when scrolling
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- source lua
vim.keymap.set("n", "<leader><leader>x", "<cmd>%source<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")

-- quickfix
local function is_quickfix_open()
    for _, win_id in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
        local bufnr = vim.api.nvim_win_get_buf(win_id)
        local buftype = vim.bo[bufnr].buftype

        if buftype == 'quickfix' then
            return true
        end
    end
    return false
end

vim.keymap.set("n", "<leader>tq", function()
    if is_quickfix_open() then
        vim.cmd("cclose")
    else
        vim.cmd("copen")
    end
end)
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

-- diagnostics
vim.keymap.set("n", "<leader>ld", vim.diagnostic.setqflist)

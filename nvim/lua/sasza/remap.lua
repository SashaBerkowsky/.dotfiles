-- open file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move lines upwards/downwards
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<leader>cp", '"+y')
vim.keymap.set("n", "<leader>cp", '"+y')
vim.keymap.set("v", "<leader>pt", '"+p')
vim.keymap.set("n", "<leader>pt", '"+p')


-- keep cursor in the center of the screen when scrolling
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("v", "<leader>cp", '"+y')
vim.keymap.set("n", "<leader>cp", '"+y')
vim.keymap.set("v", "<leader>pt", '"+p')
vim.keymap.set("n", "<leader>pt", '"+p')

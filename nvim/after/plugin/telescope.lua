local telescope = require('telescope')
local builtin = require('telescope.builtin')

-- keybindings
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

--setup opts
telescope.setup {
  defaults = { file_ignore_patterns = {"node_modules"}},
  pickers = {
    find_files = {
      hidden = true
    }
  }
}

-- set theme:
-- remove bg
require('kanagawa').setup({
  transparent=false;
})
-- set theme
vim.cmd("colorscheme kanagawa-wave")
-- remove line number bg
vim.cmd('hi! LineNr guibg=none ctermbg=none')
-- remove telescope bg
-- vim.cmd('hi! TelescopeBorder guibg=none ctermbg=none')
-- vim.cmd('hi! TelescopeTitle guibg=none ctermbg=none')

-- hex colors highlighting:
require('colorizer').setup()

local opt = vim.opt
local g = vim.g

opt.guicursor = ""

opt.nu = true
opt.relativenumber = true
opt.cursorline = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.hlsearch = false
opt.incsearch = true

opt.smartindent = true

opt.scrolloff = 8

opt.updatetime = 50

opt.termguicolors = true

-- fix orgmode links
opt.shellslash = true
opt.conceallevel = 2
opt.concealcursor = 'nc'

g.mapleader = " "

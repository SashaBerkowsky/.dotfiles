local opt = vim.opt
local g = vim.g

-- line numbers
opt.nu = true
opt.relativenumber = true
opt.cursorline = true

-- tabs
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- search
opt.hlsearch = false
opt.incsearch = true

-- scroll
opt.scrolloff = 8

-- input
opt.updatetime = 50

-- colors
opt.termguicolors = true

-- clipboard
opt.clipboard = "unnamedplus"

-- leader
g.mapleader = " "

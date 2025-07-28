local opt = vim.opt_local

opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2

local map = vim.keymap.set

map("i", ";;", "std::")

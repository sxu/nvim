local opt = vim.opt_local

opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

local map = vim.keymap.set

map("i", ";;", "std::")

local opt = vim.opt_local
local map = vim.keymap.set

opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
map("i", ";;", "std::")

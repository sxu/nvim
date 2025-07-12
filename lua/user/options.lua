local opt = vim.opt

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"
opt.background = "dark"
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.mouse = ""
opt.number = true
opt.signcolumn = "number"
opt.termguicolors = true

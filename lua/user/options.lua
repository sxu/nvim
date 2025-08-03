local opt = vim.opt

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"
opt.background = "dark"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldmethod = "expr"
opt.ignorecase = true
opt.mouse = ""
opt.number = true
opt.signcolumn = "number"
opt.smartcase = true
opt.termguicolors = true

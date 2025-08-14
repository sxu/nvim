local opt = vim.opt

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"
opt.background = "dark"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldmethod = "expr"
opt.guicursor = "n-v-c-sm:block,i-ci-ve:block-blinkon500-blinkoff500,r-cr-o:hor20,t:block-blinkon500-blinkoff500-TermCursor"
opt.ignorecase = true
opt.mouse = ""
opt.number = true
opt.signcolumn = "number"
opt.smartcase = true
opt.termguicolors = true
opt.winborder = "rounded"

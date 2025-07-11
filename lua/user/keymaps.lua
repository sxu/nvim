local map = vim.keymap.set

map({"n", "v"}, "<Space>", "10j")
map({"n", "v"}, "<Backspace>", "10k")
map("n", "<C-H>", "<C-W>h")
map("n", "<C-J>", "<C-W>j")
map("n", "<C-K>", "<C-W>k")
map("n", "<C-L>", "<C-W>l")
map("n", "<C-N>", ":bnext<CR>")
map("n", "<C-P>", ":bprevious<CR>")
map("n", "<Leader>\\", ":nohlsearch<CR>")

local map = vim.keymap.set

map({"n", "v"}, "<Space>", "10j")
map({"n", "v"}, "<Backspace>", "10k")
map("n", "<C-H>", "<C-W>h")
map("n", "<C-J>", "<C-W>j")
map("n", "<C-K>", "<C-W>k")
map("n", "<C-L>", "<C-W>l")
map("n", "<C-N>", ":bnext<CR>")
map("n", "<C-P>", ":bprevious<CR>")

map("n", "<Leader>f", ":Files<CR>")
map("n", "<Leader>b", ":Buffers<CR>")
map("n", "<Leader>h", ":History<CR>")
map("n", "<Leader>:", ":History:<CR>")
map("n", "<Leader>s", ":BLines<CR>")
map("n", "<Leader>a", ":Lines<CR>")

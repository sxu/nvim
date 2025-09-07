local map = vim.keymap.set

map({ "n", "x" }, "<Space>", "10j")
map({ "n", "x" }, "<Backspace>", "10k")
map("n", "<C-H>", "<C-W>h")
map("n", "<C-J>", "<C-W>j")
map("n", "<C-K>", "<C-W>k")
map("n", "<C-L>", "<C-W>l")
map("n", "<C-N>", "<Cmd>bnext<CR>")
map("n", "<C-P>", "<Cmd>bprevious<CR>")
map("n", "<Leader>\\", "<Cmd>nohlsearch<CR>")
if not vim.g.vscode then
  map("n", "gln", function() vim.lsp.buf.rename() end)
  map({ "n", "x" }, "gla", function() vim.lsp.buf.code_action() end)
  map("ca", "bd", function() Snacks.bufdelete.delete() end)
end

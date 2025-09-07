require("user.options")
require("user.plugins")
require("user.keymaps")
if not vim.g.vscode then
  vim.cmd.colorscheme("gruvbox-material")
  vim.api.nvim_create_autocmd("VimLeave", {
    pattern = "*",
    callback = function()
      vim.opt.guicursor = ""
      vim.fn.chansend(vim.v.stderr, "\x1b[ q")
    end,
  })
end

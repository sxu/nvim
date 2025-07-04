return {
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      vim.api.nvim_command("colorscheme gruvbox")
    end,
  },
  {"junegunn/fzf.vim", dependencies = {"junegunn/fzf"}},
  {
    "vim-airline/vim-airline",
    config = function()
      vim.g["airline#extensions#tabline#enabled"] = true
    end,
  },
}

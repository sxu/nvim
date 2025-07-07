return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "cpp",
          "lua",
          "markdown",
          "python",
          "vim",
          "vimdoc",
        }
      })
    end,
  },
  {
    "numToStr/Comment.nvim",
    opts = {}
  },
}

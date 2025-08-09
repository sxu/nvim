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
          "rust",
          "vim",
          "vimdoc",
        },
        highlight = {
          enable = true,
        },
      })
    end,
  },
  {
    "NeogitOrg/neogit",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}

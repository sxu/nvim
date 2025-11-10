return {
  { "nvim-lua/plenary.nvim" },
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "cpp",
          "haskell",
          "lua",
          "markdown",
          "ocaml",
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
}

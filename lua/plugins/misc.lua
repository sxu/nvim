return {
  { "nvim-lua/plenary.nvim" },
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install({
        "cpp",
        "haskell",
        "lua",
        "markdown",
        "ocaml",
        "python",
        "rust",
        "vim",
        "vimdoc",
      })
    end,
  },
}

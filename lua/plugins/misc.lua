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
  {
    "nvim-treesitter/nvim-treesitter-context",
    branch = "master",
    lazy = false,
    opts = {
      enable = true,
      multiwindow = false,
      max_lines = 5,
      min_window_height = 20,
      line_numbers = true,
      multiline_threshold = 1,
      trim_scope = "inner",
      mode = "topline",
      separator = nil,
      zindex = 20,
      on_attach = nil,
    },
  }
}

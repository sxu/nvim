return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
  },
  {
    "Saghen/blink.cmp",
    version = '1.*',
    opts = {},
  },
}

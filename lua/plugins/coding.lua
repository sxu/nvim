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
  -- {
  --   "numToStr/Comment.nvim",
  --   opts = {},
  -- },
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   main = "ibl",
  --   opts = {
  --     indent = { char = "▏" },
  --     scope = {
  --       show_start = false,
  --       show_end = false,
  --     },
  --   },
  --   config = function(_, opts)
  --     require("ibl").setup(opts)
  --     local hooks = require("ibl.hooks")
  --     hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
  --     hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_tab_indent_level)
  --   end,
  -- },
}

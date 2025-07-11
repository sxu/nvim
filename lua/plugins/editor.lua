return {
  {
    "ibhagwan/fzf-lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {},
    keys = {
      { "<Leader>F", ":FzfLua " },
      { "<Leader>f", "<Cmd>FzfLua files<CR>" },
      { "<Leader>b", "<Cmd>FzfLua buffers<CR>" },
      { "<Leader>/", "<Cmd>FzfLua blines<CR>" },
      { "<Leader>:", "<Cmd>FzfLua command_history<CR>" },
      { "<Leader>?", "<Cmd>FzfLua search_history<CR>" },
    },
  },
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        char = {
          highlight = { backdrop = false },
        },
      },
    },
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      -- { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    "stevearc/oil.nvim",
    opts = { default_file_explorer = true },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
    lazy = false,
  },
  {
    "Saghen/blink.cmp",
    version = '1.*',
    opts = {
      keymap = { preset = "enter" },
    },
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },
}

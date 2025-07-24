return {
  -- {
  --   "ibhagwan/fzf-lua",
  --   dependencies = "nvim-tree/nvim-web-devicons",
  --   opts = {},
  --   cmd = { "FzfLua" },
  --   keys = {
  --     { "<Leader>F", mode = { "n" }, ":FzfLua " },
  --     { "<Leader>f", mode = { "n" }, "<Cmd>FzfLua files<CR>" },
  --     { "<Leader>b", mode = { "n" }, "<Cmd>FzfLua buffers<CR>" },
  --     { "<Leader>/", mode = { "n" }, "<Cmd>FzfLua blines<CR>" },
  --     { "<Leader>:", mode = { "n" }, "<Cmd>FzfLua command_history<CR>" },
  --     { "<Leader>?", mode = { "n" }, "<Cmd>FzfLua search_history<CR>" },
  --   },
  -- },
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        char = { enabled = false },
      },
    },
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = { "o" }, function() require("flash").remote() end, desc = "Remote Flash" },
      -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  -- {
  --   "stevearc/oil.nvim",
  --   opts = { default_file_explorer = true },
  --   dependencies = { "nvim-tree/nvim-web-devicons" },
  --   lazy = false,
  --   opts = {
  --     keymaps = {
  --       ["q"] = { "actions.close", mode = "n" },
  --     },
  --   },
  --   keys = {
  --     { "<Leader>E", mode = { "n" }, "<Cmd>Oil --float %:p:h<CR>" },
  --   },
  -- },
  {
    "Saghen/blink.cmp",
    version = "1.*",
    opts = {
      -- completion = {
      --   list = { selection = { preselect = false, auto_insert = true } },
      -- },
      keymap = {
        preset = "default",
        ["<Right>"] = { "select_and_accept", "fallback" },
      },
      cmdline = { keymap = { preset = "inherit"} },
    },
  },
  {
    "windwp/nvim-autopairs",
    opts = {},
  },
}

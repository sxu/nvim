return {
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        char = { enabled = false },
      },
    },
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = { "o" }, function() require("flash").remote() end, desc = "Remote Flash" },
      -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
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

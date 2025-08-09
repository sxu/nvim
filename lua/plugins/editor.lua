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
      keymap = {
        preset = "default",
        ["<Left>"] = { "hide", "fallback" },
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

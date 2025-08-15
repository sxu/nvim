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
    event = "VeryLazy",
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
    event = "VeryLazy",
    opts = {},
  },
  {
    "kylechui/nvim-surround",
    version = "^3.0.0",
    event = "VeryLazy",
    opts = {
      keymaps = {
        normal = "gs",
        insert = false,
        visual = "gs",
        change = "gsc",
        delete = "gsd",
      },
      surrounds = {
        ["("] = {
            add = { "(", ")" },
            delete = "^(.)().-(.)()$",
        },
        [")"] = {
            add = { "( ", " )" },
            delete = "^(. ?)().-( ?.)()$",
        },
        ["{"] = {
            add = { "{", "}" },
            delete = "^(.)().-(.)()$",
        },
        ["}"] = {
            add = { "{ ", " }" },
            delete = "^(. ?)().-( ?.)()$",
        },
        ["["] = {
            add = { "[", "]" },
            delete = "^(.)().-(.)()$",
        },
        ["]"] = {
            add = { "[ ", " ]" },
            delete = "^(. ?)().-( ?.)()$",
        },
        ["<"] = {
            add = { "<", ">" },
            delete = "^(.)().-(.)()$",
        },
        [">"] = {
            add = { "< ", " >" },
            delete = "^(. ?)().-( ?.)()$",
        },
      },
    },
  }
}

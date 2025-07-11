return {
  {
    "ibhagwan/fzf-lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {},
    cmd = { "FzfLua" },
    keys = {
      { "<Leader>F", mode = { "n" }, ":FzfLua " },
      { "<Leader>f", mode = { "n" }, "<Cmd>FzfLua files<CR>" },
      { "<Leader>b", mode = { "n" }, "<Cmd>FzfLua buffers<CR>" },
      { "<Leader>/", mode = { "n" }, "<Cmd>FzfLua blines<CR>" },
      { "<Leader>:", mode = { "n" }, "<Cmd>FzfLua command_history<CR>" },
      { "<Leader>?", mode = { "n" }, "<Cmd>FzfLua search_history<CR>" },
    },
  },
  {
  "folke/snacks.nvim",
    lazy = false,
    opts = {
      -- bigfile = { enabled = true },
      -- dashboard = { enabled = true },
      -- explorer = { enabled = true },
      -- indent = { enabled = true },
      -- input = { enabled = true },
      picker = { enabled = true },
      -- notifier = { enabled = true },
      -- quickfile = { enabled = true },
      -- scope = { enabled = true },
      -- scroll = { enabled = true },
      -- statuscolumn = { enabled = true },
      -- words = { enabled = true },
    },
    keys = {
      -- { "<Leader>f", function() Snacks.picker.files() end },
      -- { "<Leader>b", function() Snacks.picker.buffers() end },
      { "<Leader>t", mode = { "n" }, function() Snacks.picker.treesitter() end },
      { "<Leader>T", mode = { "n" }, ":lua Snacks.picker.()<Left><Left>" },
      -- { "<Leader>:", function() Snacks.picker.command_history() end },
      -- { "<Leader>/", function() Snacks.picker.search_history() end },
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
    lazy = false,
    opts = {
      keymaps = {
        ["q"] = { "actions.close", mode = "n" },
      },
    },
    keys = {
      { "<Leader>E", mode = { "n" }, "<Cmd>Oil --float %:p:h<CR>" },
    },
  },
  {
    "Saghen/blink.cmp",
    version = '1.*',
    opts = {
      completion = {
        list = { selection = { preselect = false, auto_insert = true } },
      },
    },
  },
  {
    "windwp/nvim-autopairs",
    opts = {},
  },
}

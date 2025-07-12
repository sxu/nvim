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
  "folke/snacks.nvim",
    lazy = false,
    opts = {
      -- bigfile = { enabled = true },
      -- dashboard = { enabled = true },
      explorer = { replace_netrw = true },
      -- indent = { enabled = true },
      -- input = { enabled = true },
      picker = {
        sources = {
          explorer = {
            win = {
              list = {
                keys = {
                  ["-"] = "explorer_up",
                  ["C"] = "tcd",
                },
              },
            },
          },
        },
      },
      -- notifier = { enabled = true },
      -- quickfile = { enabled = true },
      -- scope = { enabled = true },
      -- scroll = { enabled = true },
      -- statuscolumn = { enabled = true },
      -- words = { enabled = true },
    },
    keys = {
      { "<Leader>P", mode = { "n" }, ":lua Snacks.picker.()<Left><Left>" },
      { "<Leader>f", mode = { "n" }, function() Snacks.picker.files() end },
      { "<Leader>b", mode = { "n" }, function() Snacks.picker.buffers() end },
      { "<Leader>s", mode = { "n" }, function() Snacks.picker.lsp_symbols() end },
      { "<Leader>:", mode = { "n" }, function() Snacks.picker.command_history() end },
      { "<Leader>/", mode = { "n" }, function() Snacks.picker.search_history() end },
      {
        "<Leader>E",
        mode = { "n" },
        function()
          Snacks.picker.explorer({
            layout = { preset = "default" , preview = true},
            auto_close = true,
          })
        end,
      },
      { "gd", function() Snacks.picker.lsp_definitions() end },
      { "gD", function() Snacks.picker.lsp_declarations() end },
      { "gr", function() Snacks.picker.lsp_references() end, nowait = true },
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
        ["<C-l>"] = { "select_and_accept" },
      },
      cmdline = { keymap = { preset = "inherit"} },
    },
  },
  {
    "windwp/nvim-autopairs",
    opts = {},
  },
}

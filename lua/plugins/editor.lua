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
    "nvim-tree/nvim-tree.lua",
    opts = {
      disable_netrw = true,
      view = {
        float = {
          enable = true,
          open_win_config = function()
            local screen_w = vim.opt.columns:get()
            local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
            local window_w = screen_w * 0.8
            local window_h = screen_h * 0.8
            local window_w_int = math.floor(window_w)
            local window_h_int = math.floor(window_h)
            local center_x = (screen_w - window_w) / 2
            local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
            return {
              relative = "editor",
              border = "rounded",
              width = window_w_int,
              height = window_h_int,
              row = center_y,
              col = center_x,
            }
          end,
        },
      },
    },
    keys = {
      { "<Leader>E", function() require('nvim-tree.api').tree.open({path = vim.fn.expand('%:p:h')}) end },
    },
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

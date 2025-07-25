return {
  {
    "folke/snacks.nvim",
    lazy = false,
    opts = {
      -- bigfile = { enabled = true },
      -- dashboard = { enabled = true },
      explorer = { replace_netrw = true },
      indent = {
        indent = { char = "▏" },
        -- scope = { enabled = false },
        animate = { enabled = false },
      },
      -- input = { enabled = true },
      picker = {
        sources = {
          command_history = {
            sort = { fields = { "idx", "score:desc"} },
          },
          search_history = {
            sort = { fields = { "idx", "score:desc"} },
          },
          lines = { layout = { preset = "default" , preview = true} },
          pickers = { layout = { preview = false} },
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
      { "<Leader>c", mode = { "n" }, function() Snacks.picker.pickers() end },
      { "<Leader>f", mode = { "n" }, function() Snacks.picker.files() end },
      { "<Leader>b", mode = { "n" }, function() Snacks.picker.buffers() end },
      { "<Leader>s", mode = { "n" }, function() Snacks.picker.lines() end },
      { "<Leader>a", mode = { "n" }, function() Snacks.picker.grep_buffers() end },
      { "<Leader>:", mode = { "n" }, function() Snacks.picker.command_history() end },
      -- { "<Leader>/", mode = { "n" }, function() Snacks.picker.search_history() end },
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
      { "gd", mode = { "n" }, function() Snacks.picker.lsp_definitions() end },
      { "gD", mode = { "n" }, function() Snacks.picker.lsp_declarations() end },
      { "gO", mode = { "n" }, function() Snacks.picker.lsp_symbols() end },
      { "gri", mode = { "n" }, function() Snacks.picker.lsp_implementations() end },
      { "grt", mode = { "n" }, function() Snacks.picker.lsp_type_definitions() end },
      { "grr", mode = { "n" }, function() Snacks.picker.lsp_references() end, nowait = true },
    },
  },
}

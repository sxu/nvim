return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = function()
      local lsp_symbols_searching = false
      local lsp_symbols_picker_ref ---@type snacks.Picker.ref
      return {
        bigfile = { enabled = true },
        -- dashboard = { enabled = true },
        explorer = { replace_netrw = true },
        indent = {
          indent = { char = "▏" },
          -- scope = { enabled = false },
          animate = { enabled = false },
        },
        -- input = { enabled = true },
        picker = {
          layout = {
            layout = { height = 0.95, width = 0.95 },
          },
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
            lsp_symbols = {
              tree = true,
              filter = {
                transform = function(picker, filter)
                  lsp_symbols_picker_ref = picker:ref()
                  local s = not filter:is_empty()
                  if lsp_symbols_searching ~= s then
                    lsp_symbols_searching = s
                    filter.meta.searching = lsp_symbols_searching
                    return true
                  end
                end,
              },
              matcher = {
                on_match = function(matcher, item)
                  if not lsp_symbols_searching then
                    return
                  end
                  local picker = lsp_symbols_picker_ref.value
                  -- Add parent symbols to matching items
                  if picker and item.score > 0 then
                    item.child_match_only = false
                    local parent = item.parent
                    while parent do
                      -- if parent.score == 0 or parent.match_tick ~= matcher.tick then
                      if (parent.score == 0 or parent.match_tick ~= matcher.tick) and parent.name ~= nil then
                        parent.score = 1
                        parent.child_match_only = true
                        parent.match_tick = matcher.tick
                        parent.match_topk = nil
                        picker.list:add(parent)
                      else
                        break
                      end
                      parent = parent.parent
                    end
                  end
                end,
                on_done = function()
                  if not lsp_symbols_searching then
                    return
                  end
                  local picker = lsp_symbols_picker_ref.value
                  if not picker or picker.closed then
                    return
                  end
                  for item, idx in picker:iter() do
                    if not item.child_match_only then
                      picker.list:view(idx)
                      return
                    end
                  end
                end,
              },
              sort = function(a, b)
                if a.pos[1] == b.pos[1] then
                  return a.pos[2] < b.pos[2]
                end
                return a.pos[1] < b.pos[1]
              end,
            },
          },
        },
        -- notifier = { enabled = true },
        -- quickfile = { enabled = true },
        -- scope = { enabled = true },
        -- scroll = { enabled = true },
        -- statuscolumn = { enabled = true },
        -- words = { enabled = true },
      }
    end,
    keys = {
      { "<Leader><Tab>", mode = { "n" }, function() Snacks.picker.pickers() end, desc = "Pickers" },
      { "<Leader>f", mode = { "n" }, function() Snacks.picker.files() end, desc = "Files" },
      { "<Leader>h", mode = { "n" }, function() Snacks.picker.recent() end, desc = "Recent files" },
      { "<Leader>b", mode = { "n" }, function() Snacks.picker.buffers() end, desc = "Buffers" },
      { "<Leader>s", mode = { "n" }, function() Snacks.picker.lines() end, desc = "Fuzzy search current buffer" },
      { "<Leader>a", mode = { "n" }, function() Snacks.picker.grep_buffers() end, desc = "Fuzzy search all buffers" },
      { "<Leader>g", mode = { "n" }, function() Snacks.picker.grep() end, desc = "Grep" },
      { "<Leader>:", mode = { "n" }, function() Snacks.picker.command_history() end, desc = "Command history" },
      { "<Leader>/", mode = { "n" }, function() Snacks.picker.search_history() end, desc = "Search history" },
      {
        "<Leader>E",
        mode = { "n" },
        function()
          Snacks.picker.explorer({
            layout = { preset = "default" , preview = true},
            auto_close = true,
          })
        end,
        desc = "Explorer",
      },
      { "gd", mode = { "n" }, function() Snacks.picker.lsp_definitions() end },
      { "gD", mode = { "n" }, function() Snacks.picker.lsp_declarations() end },
      { "gls", mode = { "n" }, function() Snacks.picker.lsp_symbols() end },
      { "gli", mode = { "n" }, function() Snacks.picker.lsp_implementations() end },
      { "glt", mode = { "n" }, function() Snacks.picker.lsp_type_definitions() end },
      { "glr", mode = { "n" }, function() Snacks.picker.lsp_references() end, nowait = true },
    },
  },
}

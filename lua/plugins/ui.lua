return {
  {
    "akinsho/bufferline.nvim",
    cond = not vim.g.vscode,
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        -- separator_style = "slant",
        show_buffer_close_icons = false,
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    cond = not vim.g.vscode,
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        theme = "auto",
        icons_enabled = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { { "filename", path = 2 } },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },
}

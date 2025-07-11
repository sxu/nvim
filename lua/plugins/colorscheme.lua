return {
  {
    "sainnhe/gruvbox-material",
    init = function()
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "original"
    end,
    config = function()
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  {
    "sainnhe/everforest",
    init = function()
      vim.g.everforest_background = "hard"
    end,
    -- config = function()
    --   vim.cmd.colorscheme("everforest")
    -- end,
  },
}

return {
  {
    "sainnhe/gruvbox-material",
    init = function()
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_enable_italic = true
    end,
  },
  {
    "sainnhe/everforest",
    init = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_enable_italic = true
    end,
  },
  {
    "sainnhe/sonokai",
    init = function()
      vim.g.sonokai_style = "default"
      vim.g.sonokai_enable_italic = true
    end,
  },
  { "EdenEast/nightfox.nvim" },
  {
    "ribru17/bamboo.nvim",
    opts = { style = "multiplex" },
  },
}

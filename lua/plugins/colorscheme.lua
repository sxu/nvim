return {
  {
    "sainnhe/gruvbox-material",
    cond = not vim.g.vscode,
    init = function()
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_enable_italic = true
    end,
  },
  {
    "sainnhe/everforest",
    cond = not vim.g.vscode,
    init = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_enable_italic = true
    end,
  },
  {
    "sainnhe/sonokai",
    cond = not vim.g.vscode,
    init = function()
      vim.g.sonokai_style = "default"
      vim.g.sonokai_enable_italic = true
    end,
  },
  {
    "EdenEast/nightfox.nvim",
    cond = not vim.g.vscode,
  },
  {
    "ribru17/bamboo.nvim",
    cond = not vim.g.vscode,
    opts = { style = "multiplex" },
  },
}

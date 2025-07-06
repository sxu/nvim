return {
  -- {
  --   "sainnhe/everforest",
  --   config = function()
  --     vim.opt.background = "dark"
  --     vim.g.everforest_background = "hard"
  --     vim.cmd.colorscheme("everforest")
  --   end,
  -- },
  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.opt.background = "dark"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "material"
      -- vim.g.gruvbox_material_disable_italic_comment = "material"
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
}

return {
  {
    "neovim/nvim-lspconfig",
    events = { "BufReadPre", "BufNewFile" },
    config = function()
      vim.lsp.enable("rust_analyzer")
    end,
  },
}

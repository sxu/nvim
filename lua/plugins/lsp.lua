return {
  {
    "neovim/nvim-lspconfig",
    cond = not vim.g.vscode,
    events = { "BufReadPre", "BufNewFile" },
    config = function()
      vim.lsp.enable("clangd")
      vim.lsp.enable("ocamllsp")
      vim.lsp.enable("pyright")
      vim.lsp.enable("rust_analyzer")
      -- vim.lsp.enable("hls")
    end,
  },
  {
    "mrcjkb/haskell-tools.nvim",
    version = '^6',
    lazy = false,
  }
}

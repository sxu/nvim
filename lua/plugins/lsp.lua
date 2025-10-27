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
    end,
  },
}

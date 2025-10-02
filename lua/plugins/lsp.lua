return {
  -- LSP本体
  { "neovim/nvim-lspconfig" },

  -- LSPサーバの自動インストーラ
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim", "nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- Python
          "pyright",
          -- PHP
          "intelephense",
          -- JS/TS
          "vtsls",
        },
        automatic_installation = true,
      })
    end,
  },
}

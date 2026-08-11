return {
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = {
            "--config",
            -- vim.fn.stdpath("config") は自動的に ~/.config/nvim などの設定ディレクトリのパスを解決します
            vim.fn.stdpath("config") .. "/markdownlint.json",
            "--", -- 引数の最後に必要
          },
        },
      },
    },
  },
}

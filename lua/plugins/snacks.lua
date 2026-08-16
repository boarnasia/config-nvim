return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        -- 既存の files 設定
        files = {
          hidden = true,
          ignored = true,
          cmd = "fd",
        },
        -- 既存の grep 設定
        grep = {
          hidden = true,
          cmd = "rg",
          regex = true,
        },
        -- 2. snacks explorer 側の設定を追加 [3, 4]
        explorer = {
          hidden = true,         -- 隠しファイルをデフォルトで表示する
          ignored = true,        -- gitignore されたファイルをデフォルトで表示する
        },
      },
    },
  },
}

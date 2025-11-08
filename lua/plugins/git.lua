return {
  -- Git integration for Vim
  {
    "tpope/vim-fugitive",
    lazy = false,
    cmd = { "Git" },
  },

  -- 差分サイン + ハンク操作
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true, -- 行の最後に blame を表示
      current_line_blame_opts = {
        delay = 250, -- ミリ秒
      },
    }
  },

  -- 差分ビューアー
  {
    "sindrets/diffview.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    opts = {
      -- diffview のオプション
    },
  },
}

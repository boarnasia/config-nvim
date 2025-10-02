return {
  -- Git integration for Vim
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "G" },
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

  -- Magit 風 UI
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    lazy = false,
    opts = {
      disable_hint = false,
      prompt_force_push = true,
      -- 他オプションを必要に応じて設定
    },
    keys = {
      { "<leader>gg", ":Neogit<CR>", desc = "Open Neogit" },
    },
  },
}

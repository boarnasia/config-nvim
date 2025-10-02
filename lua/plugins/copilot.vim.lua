return {
  {
    "github/copilot.vim",
    lazy = false, -- 起動時に読み込む
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- Copilot本体
      { "nvim-lua/plenary.nvim" },
    },
    -- build = "make tiktoken", -- tiktokenをビルドする必要あり
    -- opts = {
    --   debug = false,
    -- },
  }
}


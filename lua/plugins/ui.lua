return {
  -- bufferline を無効化
  { "akinsho/bufferline.nvim", enabled = false },

  {
    "folke/tokyonight.nvim",
    opts = {
      on_highlights = function(hl, c)
        -- 境界線の色を調整
        -- c.border や c.blue など、tokyonightのパレット変数も使えます
        hl.WinSeparator = {
          fg = "#7aa2f7", -- ここに好きな色を指定（例：少し明るい青）
          bold = true, -- 太く見せたい場合は追加
        }
      end,
    },
  },
}

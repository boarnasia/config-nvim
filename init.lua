-- leader を space に
-- lazy setup の前に設定する必要がある
vim.g.mapleader = " "        -- <Leader> を Space に
vim.g.maplocalleader = " "   -- <LocalLeader> も Space に

require("config.lazy")

require("colorscheme")
require("keymaps")
require("options")

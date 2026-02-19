-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99 -- 起動時にすべて展開された状態にする（重要）
vim.opt.foldcolumn = "1" -- 折りたたみ状況を示すサイドバーを表示（任意）
vim.opt.foldtext = "" -- 折りたたみ時の表示をシンプルにする
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus" -- クリップボードをシステムと共有

vim.g.snacks_animate = false

if vim.g.vscode then
    vim.opt.spell = false
end

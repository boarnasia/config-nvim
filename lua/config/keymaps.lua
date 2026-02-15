-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "s")
vim.keymap.del("v", "s")

-- Snacks.picker を使ってホームディレクトリから検索
vim.keymap.set("n", "<leader>fh", function()
    ---@type table|nil
    local snacks = rawget(_G, "Snacks")
    if snacks and snacks.picker then
        snacks.picker.files({ cwd = "~", hidden = true })
    else
        print("Snacks.picker is not available")
    end
end, { desc = "Find Files in Home" })

-- Normalモードで F2 を押した時にリネームを実行
vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, { desc = "LSP Rename" })

-- Markdown preview のトグル
vim.keymap.set("n", "<leader>mt", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Markdown Preview" })

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

-- Neotree
keymap("n", "<C-b>", ":Neotree<CR>", opts)

-- Telescope
---- Find files using Telescope command-line sugar.
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- CopilotChat
-- vim.keymap.set("n", "<leader>cc", ":CopilotChat<CR>", { desc = "Open Copilot Chat" })
-- vim.keymap.set("v", "<leader>ce", ":CopilotChatExplain<CR>", { desc = "Explain code" })
-- vim.keymap.set("v", "<leader>cr", ":CopilotChatRefactor<CR>", { desc = "Refactor code" })
-- vim.keymap.set("i", "<C-j>", 'copilot#Accept("\\<CR>")',
--                { expr = true, silent = true, replace_keycodes = false })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "copilot-chat",
--   callback = function()
--     vim.keymap.set("i", "<C-j>", 'copilot#Accept("<CR>")',
--       { buffer = true, expr = true, silent = true, replace_keycodes = false })
--     vim.keymap.set("n", "<C-s>", function()
--       vim.cmd("CopilotChatSend")
--     end, { noremap = true, silent = true })
--   end,
-- })


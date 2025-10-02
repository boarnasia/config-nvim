local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- leader を space に
vim.g.mapleader = " "        -- <Leader> を Space に
vim.g.maplocalleader = " "   -- <LocalLeader> も Space に

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

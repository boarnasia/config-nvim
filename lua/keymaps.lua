local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

keymap("n", "<C-t>", ":NERDTreeToggle<CR>", opts)

-- telescope
require('telescope').setup{}

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Find buffers' })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Find help' })
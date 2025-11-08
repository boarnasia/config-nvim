# README

## PLUGINS

Plugin Manager: [lazy](https://lazy.folke.io/)

### nvim-lspconfig, mason - lsp, linter とか

基本操作

```
map("n", "gd", vim.lsp.buf.definition)
map("n", "gr", vim.lsp.buf.references)
map("n", "K",  vim.lsp.buf.hover)
map("n", "<leader>rn", vim.lsp.buf.rename)
map("n", "<leader>ca", vim.lsp.buf.code_action)
map("n", "[d", vim.diagnostic.goto_prev)
map("n", "]d", vim.diagnostic.goto_next)
["<C-Space>"] = cmp.mapping.complete(),
["<CR>"] = cmp.mapping.confirm({ select = true }),
["<Tab>"] = cmp.mapping.select_next_item(),
["<S-Tab>"] = cmp.mapping.select_prev_item(),
```

DAP

```
vim.keymap.set("n", "<F5>", dap.continue)
vim.keymap.set("n", "<F10>", dap.step_over)
vim.keymap.set("n", "<F11>", dap.step_into)
vim.keymap.set("n", "<F12>", dap.step_out)
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>dB", function()
  dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end)
vim.keymap.set("n", "<leader>dr", dap.repl.open)
vim.keymap.set("n", "<leader>du", dapui.toggle)
```

### Telescope

`<leader>ff`: ファイル検索, VSCode の Ctrl-p
`:Telescope git_bcommits`: 現在開いているファイルの git ブランチのコミット履歴を表示

### git

#### fugitive.vim - A Git wrapper so awesome, it should be illegal

基本操作

```vim
:Git           " git status, or <leader>gs
:Git commit    " git commit
:Git push      " git push
:Git pull      " git pull
:Git log %     " git log for current file
```

Git status 上での基本操作

```help
-                       Stage or unstage the file or hunk under the cursor.
a                       Stage (add) the untrucked file or hunk under the cursor.
s                       Stage (add) the file or hunk under the cursor.
u                       Unstage (reset) the file or hunk under the cursor.
U                       Unstage everything.
X                       Discard the change under the cursor.
=                       Toggle an inline diff of the file under the cursor.
gI                      Open .git/info/exclude in a split and add the file
```

### diffview.nvim - A single tabpage interface for cycling through diffs for all modified files
基本操作

```vim
:DiffviewOpen        " Open the diffview
:DiffviewClose       " Close the diffview
:DiffviewToggleFiles " Toggle the file panel
```

### netgit

git ui

`<leader>gg`: gitui 起動


### copilot.vim, copilot\_chat - Github Copilot

基本操作

```vim
:Copilot enable
:Copilot disable
:CopilotChat
```

コーディング時のキーマップ
提案を受け入れる： <C-j>
次の候補に移動： <M-]>
前の候補に戻る： <M-[>

チャット時のキーマップ
提案を受け入れる： <C-j>
送信: Insert モードで <C-s>


### neo-tree.vim - エクスプローラビュー

Ctrl-b で toggle もしくは :Neotree


### telescope.nvim

`<leader>ff`: ファイル検索, VSCode の Ctrl-p


### nui.vim - UI Component Library for Neovim.

neonvim の UIライブラリ


### plenary.nvim - All the lua functions I don't want to write twice.

便利な関数集


### nvim-tree/nvim-web-devicons - Icon set


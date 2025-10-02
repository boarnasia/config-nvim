# README

## PLUGINS

### nvim-lspconfig - langage server configurations for Neovim

基本操作

- `<C-o><C-x>`: 補完
- `<C-p> | <C-n>`: 補完候補の移動
- `<C-[>`: タグジャンプ


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

提案を受け入れる： <Tab> または <C-j>
次の候補に移動： <M-]>
前の候補に戻る： <M-[>


### neo-tree.vim - エクスプローラビュー

Ctrl-b で toggle もしくは :Neotree


### telescope.nvim

`<leader>ff`: ファイル検索, VSCode の Ctrl-p


### nui.vim - UI Component Library for Neovim.

neonvim の UIライブラリ


### plenary.nvim - All the lua functions I don't want to write twice.

便利な関数集


### nvim-tree/nvim-web-devicons - Icon set


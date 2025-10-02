vim.cmd [[
try
  colorscheme habamax
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

-- 差分のハイライトを上書き
vim.api.nvim_set_hl(0, "DiffAdd",    { fg = "NONE", bg = "#003300" })
vim.api.nvim_set_hl(0, "DiffChange", { fg = "NONE", bg = "#333300" })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = "NONE", bg = "#330000" })
vim.api.nvim_set_hl(0, "DiffText",   { fg = "NONE", bg = "#444400", bold = true })


vim.cmd [[
try
  colorscheme habamax
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]


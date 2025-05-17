vim.cmd [[
try
  colorscheme hadamax
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]


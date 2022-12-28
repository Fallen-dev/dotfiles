-- set colorscheme
vim.cmd.colorscheme('rose-pine')

-- configs
local set = vim.opt

set.number = true
set.swapfile = false
set.wrap = true
set.undofile = true
set.tabstop = 2
set.shiftwidth = 2
set.cmdheight = 0
set.showtabline = 2
set.scrolloff = 5
set.ignorecase = true
set.smartcase = true
set.expandtab = true
set.cursorline = true
set.copyindent = true
set.list = true
-- set.listchars:append('eol:↴')
set.fileencoding = 'UTF-8'
set.mouse = 'a'
set.clipboard = 'unnamedplus'
set.termguicolors = true
set.background = 'dark'

-- Line indentation
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#eb6f92 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#f6c177 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#c4a7e7 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#3e8fb0 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#ebbcba gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#908caa gui=nocombine]]

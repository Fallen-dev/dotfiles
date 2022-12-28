-- local bind = vim.keymap.set
local function bind(mode, key, command)
  vim.keymap.set(mode, key, command, {noremap = true})
end
-- LEADER KEY
vim.g.mapleader = ' '

-- Key bindings
bind('n', '<leader>e', ':E<cr>')
bind('n', '<c-s>', ':w<cr>')
bind('n', '<c-q>', ':q<cr>')
bind('n', '<leader>q', ':q!<cr>')
bind('n', '<leader>so', ':so %<cr>')

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


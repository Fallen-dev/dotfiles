require('plugin')
require('keybind')
require('config')

--require('plugin.packer_compiled')

require('configs.telescope')
require('configs.treesitter')

require('neodev').setup()

require('mason').setup()
require('configs.mason')

require('fidget').setup()

require('configs.nvimcmp')

require('Comment').setup()
require('configs.indentblankline')
require('configs.lualine')

require('colorschemes.rosepine')
require('colorschemes.catppuccin')

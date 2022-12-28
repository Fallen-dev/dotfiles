vim.cmd.packadd('packer.nvim')

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    requires = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      'j-hui/fidget.nvim',

      -- Additional lua configuration, makes nvim stuff amazing
      'folke/neodev.nvim',
    },
  }

  -- Autocompletion
  use {'hrsh7th/nvim-cmp',
    requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  }

  use { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  }

  -- Additional text objects via treesitter
  use {'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
  }

  -- Fuzzy Finder (files, lsp, etc) / Telescope
  use {'nvim-telescope/telescope.nvim',
    branch = '0.1.x', requires = {'nvim-lua/plenary.nvim'}
  }

  -- Telescope Fuzzy Finder Algorithm which requires `make` to build
  use {'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make', cond = vim.fn.executable('make') == 1
  }

  -- Commenting
  use 'numToStr/Comment.nvim'

  -- Line indentation
  use 'lukas-reineke/indent-blankline.nvim'

  -- Auto detect tabstop
  use 'tpope/vim-sleuth'

  -- statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Colorscheme
  use 'ellisonleao/gruvbox.nvim'
  use {'catppuccin/nvim', as = 'catppuccin' }
  use {'rose-pine/neovim', as = 'rose-pine'}
end)

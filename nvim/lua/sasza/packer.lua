return require("packer").startup(function(use)
  -- plugin manager
  use("wbthomason/packer.nvim")
  -- file searching and more
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- color highlighting, needed for 'for my own sanity' plugins
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use 'williamboman/mason.nvim'

  --LSP autocomplete
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- for luasnip users
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- neat autocomplete formatting
  use 'onsails/lspkind.nvim'

  -- i only use this for prettier format on save, idk if it does something else
  use {'jose-elias-alvarez/null-ls.nvim'}

  -- for my own sanity (auto pairs and auto html tags for everything) 
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use {'windwp/nvim-ts-autotag'}
  -- for my own sanity 

  -- neat hex color highlighting
  use 'norcalli/nvim-colorizer.lua'

  -- very cool colorscheme (japan!1!)
  use("rebelot/kanagawa.nvim")
end)


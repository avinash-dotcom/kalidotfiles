-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  ----telescope---
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  ---color----
  use {'dracula/vim', as='dracula'}

  -----treesitter--
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('nvim-tree/nvim-tree.lua')   
  use('nvim-tree/nvim-web-devicons')
  use('nvim-lualine/lualine.nvim')

  ----------autocompletion-------------
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use{"j-hui/fidget.nvim" , opts = {} }
  use{"folke/neodev.nvim", opts = {} }
  use{"folke/which-key.nvim", opts = {} }
  use("rafamadriz/friendly-snippets")

  -----lsp-----
  use{
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig"
  }

end)

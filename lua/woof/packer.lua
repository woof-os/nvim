vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use (
  {
	  "folke/tokyonight.nvim",
	  as = "tokyonight",
  }
  )
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
  use {
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }
  use "mbbill/undotree"
  use "tpope/vim-fugitive"
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }}
  use "neovim/nvim-lspconfig"
  use ({"rrethy/base16-nvim"
	  config = function()
		  vim.cmd('colorscheme base16-gruvbox-material-dark-hard')
	  end})
end)

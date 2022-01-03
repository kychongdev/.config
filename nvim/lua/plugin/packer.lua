return require('packer').startup(function()

  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim'}

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}, {'nvim-treesitter/nvim-treesitter'}}
  }

  -- LSP and completion
  use { 'neovim/nvim-lspconfig' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }
  use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  -- tag = 'release' -- To use the latest release
}

  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },

  -- Statusline
  use { 'feline-nvim/feline.nvim' }
}
end)

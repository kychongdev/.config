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
  use { 'nvim-lua/completion-nvim' }

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

end)

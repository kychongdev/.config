vim.g.mapleader = " "
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'
require('plugin.packer')
require('plugin.lspconfig')
require('plugin.telescope')

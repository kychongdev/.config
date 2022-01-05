vim.g.mapleader = " "
vim.opt.number = true
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'
require('plugin.packer')
require('plugin.lspconfig')
require('plugin.telescope')
require('plugin.bufferline')
require('plugin.nvimtree') 

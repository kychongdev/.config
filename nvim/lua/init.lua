vim.g.mapleader = " "
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

require('plugins')

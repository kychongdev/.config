vim.g.mapleader = " "
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

require('plugin.plugins')
local lspconfig = require('lspconfig')

local servers = { 'rust_analyzer' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

print('hello')

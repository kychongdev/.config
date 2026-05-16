vim.pack.add({
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
  { src = 'https://github.com/stevearc/oil.nvim' },
})

require('oil').setup({
  columns = {
    'icon',
  },
  keymaps = {
    ['<C-h>'] = false,
  },
  view_options = {
    show_hidden = true,
  },
})

vim.keymap.set('n', '-', '<cmd>Oil<CR>', {
  desc = 'Open parent directory',
})

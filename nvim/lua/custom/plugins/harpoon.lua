vim.pack.add({
  {
    src = 'https://github.com/nvim-lua/plenary.nvim',
    name = 'plenary.nvim',
  },
  {
    src = 'https://github.com/ThePrimeagen/harpoon',
    name = 'harpoon',
    version = 'harpoon2',
  },
})

require('harpoon'):setup()

vim.keymap.set('n', '<leader>a', function()
  require('harpoon'):list():add()
end, {
  desc = '[A]ppend to harpoon',
})

vim.keymap.set('n', '<leader>n', function()
  local harpoon = require('harpoon')
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, {
  desc = 'Open [H]arpoon menu',
})

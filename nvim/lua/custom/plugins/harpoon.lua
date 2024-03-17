return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    ---@diagnostic disable-next-line: missing-parameter
    require('harpoon'):setup()
  end,
  keys = {
    {
      '<leader>a',
      function()
        require('harpoon'):list():append()
      end,
      desc = '[A]ppend to harpoon',
    },
    {
      '<leader>h',
      function()
        local harpoon = require 'harpoon'
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = 'Open [H]arpoon menu',
    },
  },
}

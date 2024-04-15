-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed, not both.
      'nvim-telescope/telescope.nvim', -- optional
    },
    config = true,
    keys = {
      {
        '<leader>g',
        function()
          require('neogit').open()
        end,
        desc = 'Open Neo[G]it',
      },
    },
  },
  {
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
  },
  {
    'github/copilot.vim',
  },
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
  },
  {
    'sainnhe/gruvbox-material',
    priority = 1000,
    config = function()
      vim.o.background = 'dark' -- or "light" for light mode
      vim.cmd "let g:gruxbox_material_foreground= 'mix'"
      vim.cmd "let g:gruvbox_material_background= 'hard'"
      vim.cmd 'let g:gruvbox_material_diagnostic_line_highlight=1'
      vim.cmd "let g:gruvbox_material_diagnostic_virtual_text='colored'"
      vim.cmd 'let g:gruvbox_material_enable_bold=1'
      vim.cmd 'let g:gruvbox_material_enable_italic=1'
      vim.cmd [[colorscheme gruvbox-material]] -- Set color scheme
      -- changing bg and border colors
      vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Normal' })
      vim.api.nvim_set_hl(0, 'LspInfoBorder', { link = 'Normal' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Normal' })
    end,
  },
}

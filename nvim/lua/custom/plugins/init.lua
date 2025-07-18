-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('harpoon'):setup()
    end,
    keys = {
      {
        '<leader>a',
        function()
          require('harpoon'):list():add()
        end,
        desc = '[A]ppend to harpoon',
      },
      {
        '<leader>n',
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
  -- {
  --   'pmizio/typescript-tools.nvim',
  --   dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  --   opts = {},
  --   config = function()
  --     require('typescript-tools').setup {
  --       handlers = {
  --         root_dir = require('lspconfig').util.root_pattern 'package.json',
  --         single_file_support = false, -- must set to false
  --       },
  --     }
  --   end,
  -- },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = 'dark' -- or "light" for light mode
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_foreground = 'mix'
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_diagnostic_line_highlight = 1
      vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
      vim.g.gruvbox_material_dim_inactive_windows = 1
      vim.cmd [[colorscheme gruvbox-material]] -- Set color scheme
      -- changing bg and border colors
      vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Normal' })
      vim.api.nvim_set_hl(0, 'LspInfoBorder', { link = 'Normal' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Normal' })
    end,
  },
  -- {
  --   'wojciech-kulik/xcodebuild.nvim',
  --   dependencies = {
  --     'nvim-telescope/telescope.nvim',
  --     'MunifTanjim/nui.nvim',
  --     'folke/snacks.nvim', -- (optional) to show previews
  --     'nvim-tree/nvim-tree.lua', -- (optional) to manage project files
  --     'stevearc/oil.nvim', -- (optional) to manage project files
  --     'nvim-treesitter/nvim-treesitter', -- (optional) for Quick tests support (required Swift parser)
  --   },
  --   config = function()
  --     require('xcodebuild').setup {
  --       -- put some options here or leave it empty to use default settings
  --     }
  --   end,
  -- },
  {
    'stevearc/oil.nvim',
    opts = {
      columns = {
        -- 'permissions',
        -- 'mtime',
        -- 'size',
        'icon',
      },
      keymaps = {
        ['<C-h>'] = false,
      },
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
      },
    },
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
}

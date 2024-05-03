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
        '<leader>l',
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
      vim.cmd 'let g:gruvbox_material_dim_inactive_windows=1'
      vim.cmd [[colorscheme gruvbox-material]] -- Set color scheme
      -- changing bg and border colors
      vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Normal' })
      vim.api.nvim_set_hl(0, 'LspInfoBorder', { link = 'Normal' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Normal' })
    end,
  },
  {
    'RaafatTurki/corn.nvim',
    opts = {
      -- enables plugin auto commands
      auto_cmds = true,

      -- sorts diagnostics according to a criteria. must be one of `severity`, `severity_reverse`, `column`, `column_reverse`, `line_number` or `line_number_reverse`
      sort_method = 'severity',

      -- sets the scope to be searched for diagnostics, must be one of `line` or `file`
      scope = 'line',

      -- sets the style of the border, must be one of `single`, `double`, `rounded`, `solid`, `shadow` or `none`
      border_style = 'single',

      -- sets which vim modes corn isn't allowed to render in, should contain strings like 'n', 'i', 'v', 'V' .. etc
      blacklisted_modes = {},

      -- sets which severity corn isn't allowed to render in, should contain diagnostic severities like:
      -- vim.diagnostic.severity.HINT
      -- vim.diagnostic.severity.INFO
      -- vim.diagnostic.severity.WARN
      -- vim.diagnostic.severity.ERROR
      blacklisted_severities = {},

      -- highlights to use for each diagnostic severity level
      highlights = {
        error = 'DiagnosticFloatingError',
        warn = 'DiagnosticFloatingWarn',
        info = 'DiagnosticFloatingInfo',
        hint = 'DiagnosticFloatingHint',
      },

      -- icons to use for each diagnostic severity level
      icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I',
      },

      -- a preprocessor function that takes a raw Corn.Item and returns it after modification, could be used for truncation or other purposes
      item_preprocess_func = function(item)
        -- the default truncation logic is here ...
        return item
      end,

      -- a hook that executes each time corn is toggled. the current state is provided via `is_hidden`
      on_toggle = function(is_hidden)
        -- custom logic goes here
      end,
    },
  },
  {
    'wojciech-kulik/xcodebuild.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'MunifTanjim/nui.nvim',
      -- 'nvim-tree/nvim-tree.lua', -- (optional) to manage project files
      -- 'stevearc/oil.nvim', -- (optional) to manage project files
      'nvim-treesitter/nvim-treesitter', -- (optional) for Quick tests support (required Swift parser)
    },
    config = function()
      require('xcodebuild').setup {
        -- put some options here or leave it empty to use default settings
      }
    end,
  },
}

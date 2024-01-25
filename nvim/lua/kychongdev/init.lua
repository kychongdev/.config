vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Install `lazy.nvim` plugin manager ]]
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- [[ Configure plugins ]]
require 'kychongdev.lazy'

-- [[ Setting options ]]
require 'kychongdev.config.options'

-- [[ Basic Keymaps ]]
require 'kychongdev.config.keymaps'

-- [[ Autoformat ]]
require 'kychongdev.config.autoformat'

-- [[ Configure Telescope ]]
-- (fuzzy finder)
require 'kychongdev.telescope'

-- [[ Configure Treesitter ]]
-- (syntax parser for highlighting)
require 'kychongdev.treesitter'

-- [[ Configure LSP ]]
-- (Language Server Protocol)
require 'kychongdev.lsp'

-- [[ Configure nvim-cmp ]]
-- (completion)
require 'kychongdev.cmp'

require 'kychongdev.conform'

require 'kychongdev.nvim-dap'

require 'kychongdev.harpoon'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et

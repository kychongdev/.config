vim.pack.add({
  {
    src = 'https://github.com/sainnhe/gruvbox-material',
    name = 'gruvbox-material',
  },
})

vim.o.background = 'dark' -- or 'light' for light mode

vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_enable_bold = 1
vim.g.gruvbox_material_foreground = 'mix'
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_diagnostic_line_highlight = 1
vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
vim.g.gruvbox_material_dim_inactive_windows = 1

vim.cmd.colorscheme('gruvbox-material')

vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Normal' })
vim.api.nvim_set_hl(0, 'LspInfoBorder', { link = 'Normal' })
vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Normal' })

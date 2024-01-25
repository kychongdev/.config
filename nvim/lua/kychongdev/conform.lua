require("conform").setup({
  formatters_by_ft = {
    -- Use a sub-list to run only the first available formatter
    javascript = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    ["*.tsx"] = { "prettier" },
    ["*.ts"] = { "prettier" },
    ["*.jsx"] = { "prettier" },
    ["*.js"] = { "prettier" }
  },
  format_on_save = {
    -- I recommend these options. See :help conform.format for details.
    lsp_fallback = true,
    timeout_ms = 500,
  },
  notify_on_error = true,
})

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = {"black", "ruff_format"},
    -- css = { "prettier" },
    c = {"cling-format"},
    cpp = {"clang-format"},
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options

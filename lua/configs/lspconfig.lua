-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"
local util = require "lspconfig/util"
-- EXAMPLE
local servers = { "html", "cssls","pyright" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- Python-specific configuration
  lspconfig.pyright.setup {
    on_attach = nvlsp.on_attach,
    capabilities = nvlsp.capabilities,
    cmd = {
      "/home/god/.local/share/nvim/mason/packages/pyright/node_modules/.bin/pyright-langserver",
      "--stdio"
    },
    filetypes = { "python" },
    root_dir = util.find_git_ancestor,
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          useLibraryCodeForTypes = true,
          diagnosticMode = "workspace",
          typeCheckingMode = "basic",
        },
        pythonPath = vim.fn.system('poetry env info --path'):gsub("%s+", "") .. '/bin/python'
      },
    },
    single_file_support = true,
  }
-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

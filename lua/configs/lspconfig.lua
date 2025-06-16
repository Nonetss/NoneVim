local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"
local util = require "lspconfig.util"

-- Astro
lspconfig.astro.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = util.root_pattern("astro.config.mjs", "astro.config.ts", ".git"),
  filetypes = { "astro" },
}

-- TypeScript / JavaScript / React
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = util.root_pattern("tsconfig.json", "package.json", ".git"),
  filetypes = {
    "typescript",
    "javascript",
    "typescriptreact",
    "javascriptreact", -- React
  },
}

-- Python
lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = util.root_pattern("pyproject.toml", "setup.py", "requirements.txt", ".git"),
  filetypes = { "python" },
}

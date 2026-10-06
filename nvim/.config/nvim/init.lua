-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.lsp.enable("ocamllsp")
local todofloat = require("todofloat")
todofloat.setup({
  target_file = "~/Code/todo.md",
})
require("FTerm").setup({
  border = "bold",
  auto_close = true,
  blend = 20,
  dimensions = {
    height = 0.8,
    width = 0.8,
  },
})
local lspconfig = require("lspconfig")

-- 1. Basedpyright for Go to Definition, hover, and completions
lspconfig.basedpyright.setup({
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "standard", -- 'off', 'basic', or 'standard'
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly",
      },
    },
  },
})

-- 2. Ruff for linting and code actions
lspconfig.ruff.setup({
  init_options = {
    settings = {
      args = {},
    },
  },
})

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = true, desc = "Go to Definition" })

return {
  {
    "nvim-java/nvim-java",
    ft = "java",
    config = function()
      require("java").setup()
      require("lspconfig").jdtls.setup({})
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        jdtls = function()
          return true -- Disables LazyVim's default JDTLS handler
        end,
      },
    },
  },
}

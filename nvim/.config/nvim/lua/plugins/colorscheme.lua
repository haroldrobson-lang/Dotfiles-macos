return {
  -- Add lackluster.nvim
  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
  },

  -- Tell LazyVim to set it as the default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

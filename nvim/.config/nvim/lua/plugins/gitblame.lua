return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true, -- faint inline blame at the end of the current line
  },
  keys = {
    {
      "<leader>gb",
      function()
        require("gitsigns").blame_line({ full = true })
      end,
      desc = "Blame line",
    },
    { "<leader>gB", "<cmd>Gitsigns blame<cr>", desc = "Blame file" },
  },
}

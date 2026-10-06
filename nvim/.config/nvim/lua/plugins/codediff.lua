return {
  "esmuellert/codediff.nvim",
  cmd = "CodeDiff",
  keys = {
    {
      "<leader>gv",
      function()
        vim.ui.input({ prompt = "PR number: " }, function(n)
          if n and n ~= "" then
            vim.cmd("CodeDiff pr " .. n)
          end
        end)
      end,
      desc = "Review PR (CodeDiff)",
    },
    { "<leader>gV", "<cmd>CodeDiff main...<cr>", desc = "Diff branch vs main (CodeDiff)" },
  },
}

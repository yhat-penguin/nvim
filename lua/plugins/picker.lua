return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader><leader>",
        function()
          LazyVim.pick("files", { hidden = true })()
        end,
        desc = "Find Files (Root Dir)",
      },
    },
  },
}

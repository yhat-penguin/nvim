return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader><leader>",
        function()
          LazyVim.pick("files", { hidden = true, no_ignore = false })()
        end,
        desc = "Find files (root dir)",
      },
    },
  },
}

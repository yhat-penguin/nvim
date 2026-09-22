return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader><leader>",
        function()
          require("lazyvim.util").telescope("files", { hidden = true, no_ignore = false })()
        end,
        desc = "Find files (root dir)",
      },
    },
  },
}

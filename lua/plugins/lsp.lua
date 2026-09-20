return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    "saghen/blink.cmp",
    optional = true,
    opts = {
      completion = {
        menu = {
          auto_show = false,
        },
        list = {
          selection = {
            preselect = false,
          },
        },
      },
    },
  },
}

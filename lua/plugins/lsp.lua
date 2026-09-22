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
          auto_show = true,
        },
        list = {
          selection = {
            preselect = false,
          },
        },
      },
    },
  },
  {
    -- disable auto-closing of brackets, quotes, etc. — close them manually
    { "nvim-mini/mini.pairs", enabled = false },
  },
}

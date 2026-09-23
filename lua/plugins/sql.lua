return {
  -- LazyVim's sql extra defaults sqlfluff to the `ansi` dialect, which
  -- doesn't understand Databricks SQL (catalogs, backtick identifiers,
  -- Lakeflow Declarative Pipelines DDL, etc.) — switch both the linter
  -- and formatter to the `databricks` dialect.
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters = {
        sqlfluff = {
          args = { "lint", "--format=json", "--dialect=databricks", "-" },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      opts.formatters.sqlfluff.args = { "format", "--dialect=databricks", "-" }
    end,
  },
}

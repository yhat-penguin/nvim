return {
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      local dap_python = require("dap-python")
      dap_python.setup("debugpy-adapter")

      -- Debug with the project's `.venv` if it exists, otherwise fall back
      -- to whatever `python3`/`python` is available globally.
      dap_python.resolve_python = function()
        local root = LazyVim.root()
        local venv_python = root .. (LazyVim.is_win() and "\\.venv\\Scripts\\python.exe" or "/.venv/bin/python")
        if vim.fn.executable(venv_python) == 1 then
          return venv_python
        end
        local global_python = vim.fn.exepath("python3")
        return global_python ~= "" and global_python or vim.fn.exepath("python")
      end
    end,
  },
}

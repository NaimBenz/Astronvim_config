return {
  name = "C",
  builder = function()
    -- Full path to current file (see :help expand())
    local file = vim.fn.expand "%:p"
    return {
      cmd = { "gcc" },
      args = {
        file,
        "-o",
        vim.fn.expand "%:p:r",
        "-std=c23",
        "-Wall",
        "-Wextra",
        "-Wpedantic",
        "-Werror",
        "-g",
        "&&",
        vim.fn.expand "%:p:r",
      },
      components = {
        -- { "on_output_quickfix", set_diagnostics = true },
        "on_result_diagnostics",
        { "on_complete_notify", statuses = { "FAILURE" } },
        "default",
      },
    }
  end,
  condition = {
    filetype = { "c" },
  },
}

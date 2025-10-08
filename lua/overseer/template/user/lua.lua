return {
  name = "Lua",
  builder = function()
    local file = vim.fn.expand("%:p")
    return {
      cmd = { "lua" },
      args = { file },
      name = "Run Lua",
      components = {
        "default",
      },
    }
  end,
  condition = {
    filetype = { "lua" },
  },
}

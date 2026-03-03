return {
  name = "C/C++",
  builder = function()
    local file = vim.fn.expand "%:p"
    local extension = vim.fn.expand "%:e"
    -- Sélection du compilateur et des flags standards
    local cmd = { "g++" }
    local std_flag = "-std=c++23"
    if extension == "c" then
      cmd = { "gcc" }
      std_flag = "-std=c11" -- Utilise un standard C (ex: c11) au lieu de c++23
    end

    return {
      cmd = cmd,
      args = {
        file,
        "-o",
        vim.fn.expand "%:p:r",
        std_flag, -- Utilisation du flag approprié
        "-Wall",
        "-Wextra",
        "-Wpedantic",
        "-Werror",
        "-g",
        "&&",
        vim.fn.expand "%:p:r",
      },
      components = {
        "on_result_diagnostics",
        { "on_complete_notify", statuses = { "FAILURE" } },
        "default",
      },
    }
  end,
  condition = {
    filetype = { "cpp", "c" },
  },
}

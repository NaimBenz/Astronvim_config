return {
  name = "Compiler et Ouvrir Typst",
  builder = function()
    local file = vim.fn.expand "%:p"
    local pdf = file:gsub("%.typ$", ".pdf")
    local open_cmd = vim.fn.has("mac") == 1 and "open" or "xdg-open"

    return {
      cmd = { "sh", "-c" },
      args = {
        -- Cette commande compile, puis si succès et fichier existant, ouvre le PDF
        string.format([[
          typst compile "%s" && [ -f "%s" ] && %s "%s"
        ]], file, pdf, open_cmd, pdf),
      },
      components = {
        "on_result_diagnostics",
        { "on_complete_notify", statuses = { "FAILURE", "SUCCESS" } },
        "default",
      },
    }
  end,
  condition = {
    filetype = { "typst" },
  },
}

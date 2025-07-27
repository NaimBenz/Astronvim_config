return {
  name = "Ouvrir PDF Typst",
  builder = function()
    local file = vim.fn.expand "%:p"
    local pdf = file:gsub("%.typ$", ".pdf")

    -- Vérifie si le fichier PDF existe
    if vim.fn.filereadable(pdf) == 0 then
      vim.notify("PDF non trouvé : " .. pdf, vim.log.levels.WARN)
      return nil
    end

    return {
      cmd = { "open", pdf }, -- "xdg-open" sur Linux
      components = {
        { "on_complete_notify", statuses = { "FAILURE" } },
        "default",
      },
    }
  end,
  condition = {
    filetype = { "typst" },
  },
}

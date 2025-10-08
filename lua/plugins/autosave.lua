return {
  enabled = true,
  "okuuva/auto-save.nvim",
  version = '^1.0.0',  -- Utilise la version 1.0.0, ou remplace par '*' pour avoir la dernière version
  cmd = "ASToggle",    -- Charger le plugin via la commande ASToggle
  event = { "InsertLeave", "TextChanged" }, -- Charger le plugin à certains événements
  opts = {
    -- Ta configuration ici (si nécessaire)
  },
}

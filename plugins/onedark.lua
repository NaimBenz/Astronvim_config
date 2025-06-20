return {
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- Pour qu'il soit chargé en premier
    config = function()
      require("onedark").setup {
        style = "deep", -- ou "cool", "warm", etc.
      }
      require("onedark").load()
    end,
  },
}

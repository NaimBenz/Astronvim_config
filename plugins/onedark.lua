return {
  -- Thème OneDark.nvim
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup {
        style = "deep", -- ou "light" selon ta préférence
      }
      require("onedark").load()
    end
  },
}

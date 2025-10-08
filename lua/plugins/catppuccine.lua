return{
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      integrations = {
        -- active des intégrations si tu veux
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        telescope = true,
        -- ajoute ce que tu utilises
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}

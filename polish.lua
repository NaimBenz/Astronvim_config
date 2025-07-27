-- Custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

-- Couleurs terminal
vim.opt.termguicolors = true

-- Transparence à l’ouverture de nvim
vim.cmd [[
  augroup TransparentBG
    autocmd!
    autocmd ColorScheme * hi Normal guibg=NONE ctermbg=NONE
    autocmd ColorScheme * hi NormalNC guibg=NONE ctermbg=NONE
    autocmd ColorScheme * hi NormalFloat guibg=NONE ctermbg=NONE
    autocmd ColorScheme * hi FloatBorder guibg=NONE
    autocmd ColorScheme * hi Pmenu guibg=NONE
  augroup END
]]

-- Appliquer tout de suite
vim.cmd [[
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE ctermbg=NONE
  hi NormalFloat guibg=NONE ctermbg=NONE
  hi FloatBorder guibg=NONE
  hi Pmenu guibg=NONE
]]

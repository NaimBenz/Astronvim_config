return {
  "matze/vim-move",
  init = function()
    -- Utilise Ctrl comme modificateur (par défaut c’est Alt)
    vim.g.move_key_modifier = 'C'

    -- (Optionnel) Tu peux aussi remapper les touches si tu veux :
    -- Déplacer des lignes en mode normal
    vim.keymap.set('n', '<C-j>', '<Plug>MoveLineDown', {})
    vim.keymap.set('n', '<C-k>', '<Plug>MoveLineUp', {})
    -- Déplacer des blocs en mode visuel
    vim.keymap.set('x', '<C-j>', '<Plug>MoveBlockDown', {})
    vim.keymap.set('x', '<C-k>', '<Plug>MoveBlockUp', {})
  end,
}

return {
  "github/copilot.vim",
  config = function()
    vim.g.copilot_no_tab_map = true

    -- Accept current suggestion with <C-J>
    vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false
    })

    -- dismiss current suggestion with <C-]>
    vim.keymap.set('i', '<C-]>', 'copilot#Dismiss()', {
      expr = true,
      replace_keycodes = false
    })
  end
}

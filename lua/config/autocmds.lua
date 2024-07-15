vim.api.nvim_create_augroup('default', { clear = true })

  -- Highlight when yanking (copying) text
  vim.api.nvim_create_autocmd('TextYankPost', {
    group    = 'default',
    pattern  = '*',
    callback = function () vim.highlight.on_yank() end
  })

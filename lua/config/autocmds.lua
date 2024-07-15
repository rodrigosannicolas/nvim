vim.api.nvim_create_augroup('bufcheck', { clear = true })
  -- Highlight when yanking (copying) text
  vim.api.nvim_create_autocmd('TextYankPost', {
    group    = 'bufcheck',
    pattern  = '*',
    callback = function () vim.highlight.on_yank() end
  })

  -- Reload config file on change
  vim.api.nvim_create_autocmd('BufWritePost', {
    group    = 'bufcheck',
    pattern  = vim.env.MYVIMRC,
    command  = 'silent source %'
  })

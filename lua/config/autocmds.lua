vim.api.nvim_create_augroup('default', { clear = true })

  -- Highlight when yanking (copying) text
  vim.api.nvim_create_autocmd('TextYankPost', {
    group    = 'default',
    pattern  = '*',
    callback = function () vim.highlight.on_yank() end
  })

  -- LSP keymaps
  vim.api.nvim_create_autocmd("LspAttach", {
    group    = 'default',
    pattern  = '*',
    callback = function(event)
      local opts = { buffer = event.buf }

      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
      vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, opts)
      vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)
      vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
      vim.keymap.set("n", "<F4>", vim.lsp.buf.code_action, opts)
    end
  })

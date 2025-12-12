return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme catppuccin")
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#212327" })
  end,
}


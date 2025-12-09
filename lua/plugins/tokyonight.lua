return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd("colorscheme tokyonight")
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#212327" })
  end,
}

return {
  "projekt0n/github-nvim-theme",
  lazy = false,
  priority = 1000,
  config = function()
    -- vim.cmd("colorscheme github_dark_default")
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#212327" })
  end,
}

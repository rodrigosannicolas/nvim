return {
  'shaunsingh/nord.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    -- Example using shaunsingh/nord.nvim
    vim.g.nord_contrast = true
    vim.g.nord_borders = true
    vim.g.nord_disable_background = true -- Removes the gray background so it uses your terminal's black background

    -- Load the colorscheme
    vim.cmd[[colorscheme nord]]

    -- Force a pitch black background if your terminal isn't already black
    vim.api.nvim_set_hl(0, "Normal", { bg = "#000000", fg = "#D8DEE9" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "#000000", fg = "#4C566A" })
  end
}
-- return {
--   'projekt0n/github-nvim-theme',
--   name = 'github-theme',
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     require('github-theme').setup({
--       -- ...
--     })

--     vim.cmd('colorscheme github_dark_default')
--   end,
-- }


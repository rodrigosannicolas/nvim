local highlight = { "Default" }
local hooks = require "ibl.hooks"

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "Default", { fg = "#2C2E43" })
end)

require("ibl").setup { 
  indent = { highlight = highlight },
  scope = { enabled = false },
}

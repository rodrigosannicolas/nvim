return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function ()
    require("lualine").setup({
      options = {
        globalstatus = true,
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        refresh = {
          statusline = 1,
          tabline = 1,
          winbar = 1,
        }
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {{ "filename", path = 1 }},
        lualine_x = { "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" }
      },
      -- tabline = {
      --   lualine_a = {{ "tabs", max_length = vim.o.columns, mode = 1 }},
      --   lualine_b = {},
      --   lualine_c = {},
      --   lualine_x = {},
      --   lualine_y = {},
      -- },
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    })
  end
}

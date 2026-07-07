return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-telescope/telescope.nvim",
  },
  cmd = { "VenvSelect", "VenvSelectCached" },
  keys = {
    { "<leader>vs", "<cmd>VenvSelect<cr>",       desc = "Select Python venv" },
    { "<leader>vc", "<cmd>VenvSelectCached<cr>", desc = "Select cached Python venv" },
  },
  opts = {},
}

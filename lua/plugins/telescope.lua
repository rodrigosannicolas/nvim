return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim"
  },
  config = function ()
    vim.keymap.set("n", "<C-p>", function ()
      require("telescope").extensions.file_browser.file_browser({ path = "%:h:p", select_buffer = true })
    end)

    vim.keymap.set("n", "<leader>ps", function ()
      require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
    end)

    vim.keymap.set("n", "<leader><leader>", function ()
      require("telescope.builtin").git_files()
    end)
  end
}

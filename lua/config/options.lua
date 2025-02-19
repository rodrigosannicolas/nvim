-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = ' '

-- Look & feel
vim.opt.guicursor = ""                                      -- set the appearance of the cursor
vim.opt.number = true                                       -- display line numbers in the left margin of the vim window
vim.opt.relativenumber = true                               -- displays relative line numbers in the left margin of the Vim window
vim.opt.wrap = false                                        -- controls whether lines longer than the width of the window should be wrapped to the next line
vim.opt.showmatch = true                                    -- highlights matching parentheses, braces, and brackets when the cursor is positioned over one of them
vim.opt.signcolumn = "yes"                                  -- controls the width of the column used to display sign icons, such as those used by version control plugins
vim.opt.cursorline = true                                   -- highlights the current line in the Vim window
vim.opt.colorcolumn = "80"                                  -- highlights a specified column in the Vim window with a different background color
vim.opt.scrolloff = 8                                       -- sets the number of lines that should be visible above and below the cursor when scrolling through a file
vim.opt.mouse = "a"                                         -- enables or disables mouse support in the Vim window
vim.opt.clipboard = "unnamedplus"                           -- controls how Vim interacts with the system clipboard
vim.opt.showmode = false                                    -- Don't show the mode
vim.opt.breakindent = true                                  -- Enable break indent
vim.opt.splitright = true                                   -- Configure how new splits should be opened
vim.opt.splitbelow = true                                   -- Configure how new splits should be opened
vim.opt.list = true                                         -- Sets how neovim will display certain whitespace in the editor.
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' } -- Sets how neovim will display certain whitespace in the editor.
vim.opt.inccommand = 'split'                                -- Preview substitutions
vim.opt.laststatus = 3                                      -- Global statusline

-- Folds
-- vim.opt.foldmethod = "expr"                                 -- Name of the current folding method
-- vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"        -- Expression used for "expr" folding
-- vim.opt.foldnestmax = 1                                     -- Maximum nesting
-- vim.opt.foldcolumn = "0"                                    -- Width for a column on the side of the window to indicate folds
-- vim.opt.foldtext = ""                                       -- Show the first line of the fols syntax highlighted
-- vim.opt.foldlevel = 0                                       -- When 'foldlevel' is 0, all folds are closed

-- Search
vim.opt.hlsearch = true                                     -- highlights all instances of the search pattern in the file
vim.opt.ignorecase = true                                   -- makes searches case-insensitive by default
vim.opt.smartcase = true                                    -- makes searches case-sensitive only if the search pattern contains at least one uppercase letter

-- Tabs and indentation
vim.opt.tabstop = 2                                         -- sets the number of spaces that should be used to represent a tab character
vim.opt.softtabstop = 2                                     -- sets the number of spaces that should be used when inserting a new line with the Enter key
vim.opt.shiftwidth = 2                                      -- sets the number of spaces that should be used when indenting text with the > and < commands
vim.opt.expandtab = true                                    -- replaces tab characters with spaces when text is inserted in the Vim window
vim.opt.smartindent = true                                  -- automatically indents new lines based on the indentation level of the previous line
vim.opt.smarttab = true                                     -- makes the Tab key insert spaces or tabs, depending on the context

-- Backup files
vim.opt.undofile = true                                     -- Save undo history
vim.opt.backup = false                                      -- controls whether backup files should be created when editing a file
vim.opt.swapfile = false                                    -- controls whether swap files should be created to preserve changes made to a file in case Vim crashes

-- General behavior
vim.opt.updatetime = 50                                     -- sets the amount of time, in milliseconds, that Vim waits before writing changes to a file vim.opt.hidden = true                                    -- allows Vim to switch between buffers without requiring them to be saved first
vim.opt.timeoutlen = 300                                    -- Decrease update time

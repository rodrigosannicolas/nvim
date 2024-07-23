local g = vim.g
local opt = vim.opt

-- Leader key
g.mapleader = " "
g.maplocalleader = ' '

-- Look & feel
opt.guicursor = ""                                      -- set the appearance of the cursor
opt.number = true                                       -- display line numbers in the left margin of the vim window
opt.relativenumber = true                               -- displays relative line numbers in the left margin of the Vim window
opt.wrap = false                                        -- controls whether lines longer than the width of the window should be wrapped to the next line
opt.showmatch = true                                    -- highlights matching parentheses, braces, and brackets when the cursor is positioned over one of them
opt.signcolumn = "yes"                                  -- controls the width of the column used to display sign icons, such as those used by version control plugins
opt.cursorline = true                                   -- highlights the current line in the Vim window
opt.colorcolumn = "80"                                  -- highlights a specified column in the Vim window with a different background color
opt.scrolloff = 10                                      -- sets the number of lines that should be visible above and below the cursor when scrolling through a file
opt.mouse = "a"                                         -- enables or disables mouse support in the Vim window
opt.clipboard = "unnamedplus"                           -- controls how Vim interacts with the system clipboard
opt.showmode = false                                    -- Don't show the mode
opt.breakindent = true                                  -- Enable break indent
opt.splitright = true                                   -- Configure how new splits should be opened
opt.splitbelow = true                                   -- Configure how new splits should be opened
opt.list = true                                         -- Sets how neovim will display certain whitespace in the editor.
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' } -- Sets how neovim will display certain whitespace in the editor.
opt.inccommand = 'split'                                -- Preview substitutions
opt.laststatus = 3                                      -- Global statusline

-- Search
opt.hlsearch = true                                     -- highlights all instances of the search pattern in the file
opt.ignorecase = true                                   -- makes searches case-insensitive by default
opt.smartcase = true                                    -- makes searches case-sensitive only if the search pattern contains at least one uppercase letter

-- Tabs and indentation
opt.tabstop = 2                                         -- sets the number of spaces that should be used to represent a tab character
opt.softtabstop = 2                                     -- sets the number of spaces that should be used when inserting a new line with the Enter key
opt.shiftwidth = 2                                      -- sets the number of spaces that should be used when indenting text with the > and < commands
opt.expandtab = true                                    -- replaces tab characters with spaces when text is inserted in the Vim window
opt.smartindent = true                                  -- automatically indents new lines based on the indentation level of the previous line
opt.smarttab = true                                     -- makes the Tab key insert spaces or tabs, depending on the context

-- Backup files
opt.undofile = true                                     -- Save undo history
opt.backup = false                                      -- controls whether backup files should be created when editing a file
opt.swapfile = false                                    -- controls whether swap files should be created to preserve changes made to a file in case Vim crashes

-- General behavior
opt.updatetime = 50                                     -- sets the amount of time, in milliseconds, that Vim waits before writing changes to a file vim.opt.hidden = true                                    -- allows Vim to switch between buffers without requiring them to be saved first
opt.timeoutlen = 300                                    -- Decrease update time

-- Moving through splits
vim.keymaps.set("n", "<Leader>h", "<C-W>h", { desc = 'Move focus to the left window' })
vim.keymaps.set("n", "<Leader>l", "<C-W>l", { desc = 'Move focus to the right window' })
vim.keymaps.set("n", "<Leader>j", "<C-W>j", { desc = 'Move focus to the lower window' })
vim.keymaps.set("n", "<Leader>k", "<C-W>k", { desc = 'Move focus to the upper window' })

-- Moving through tabs
vim.keymaps.set("n", "<C-l>", "gt", { desc = 'Move focus to the left tab' })
vim.keymaps.set("n", "<C-h>", "gT", { desc = 'Move focus to the right tab' })

-- Clear highlight on pressing <Esc> in normal mode
vim.keymaps.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymaps.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymaps.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymaps.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymaps.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Move to begining/end of line
vim.keymaps.set("n", "H", "^", { desc = 'Move cursor to the beginning of the line' })
vim.keymaps.set("n", "L", "$", { desc = 'Move cursor to the end of the line' })

-- Redo
vim.keymaps.set("n", "<Leader>u", "<C-R>", { desc = 'Redo the last undone action' })

-- Enter insert mode using jj
vim.keymaps.set("i", "jj", "<esc>", { desc = 'Exit insert mode and enter normal mode' })

-- Undo breakpoints
vim.keymaps.set("i", ",", ",<c-g>u", { desc = 'Undo the last change after entering a comma' })
vim.keymaps.set("i", ".", ".<c-g>u", { desc = 'Undo the last change after entering a period' })
vim.keymaps.set("i", "!", "!<c-g>u", { desc = 'Undo the last change after entering an exclamation mark' })
vim.keymaps.set("i", "?", "?<c-g>u", { desc = 'Undo the last change after entering a question mark' })
vim.keymaps.set("i", ";", ";<c-g>u", { desc = 'Undo the last change after entering a semicolon' })

-- Search and replace
vim.keymaps.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = 'Search and replace occurrences of the word under the cursor' })

-- Grep word under cursor
vim.keymaps.set("n", "<leader>g", ":grep --exclude-dir=node_modules -i -n -R <C-r><C-w> .", { desc = 'Search for occurrences of the word under the cursor using grep' })

-- Move lines up and down while in visual mode
vim.keymaps.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Move selected lines down' })
vim.keymaps.set("v", "K", ":m '<-2<CR>gv=gv", { desc = 'Move selected lines up' })

-- Center cursor
vim.keymaps.set("n", "J", "mzJ`z", { desc = 'Center the line with the cursor' })
vim.keymaps.set("n", "<C-d>", "<C-d>zz", { desc = 'Scroll down and center cursor' })
vim.keymaps.set("n", "<C-u>", "<C-u>zz", { desc = 'Scroll up and center cursor' })
vim.keymaps.set("n", "n", "nzzzv", { desc = 'Move to the next search match and center cursor' })
vim.keymaps.set("n", "N", "Nzzzv", { desc = 'Move to the previous search match and center cursor' })

-- Reorder opened tabs
vim.keymaps.set("n", "<leader>-", ":tabmove -1<CR>", { desc = 'Move current tab to the left' })
vim.keymaps.set("n", "<leader>+", ":tabmove +1<CR>", { desc = 'Move current tab to the right' })

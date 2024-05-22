vim.g.mapleader = " "
-- plus more settings as needed
vim.keymap.set("n", "<leader>t", vim.cmd.ToggleTerm)
vim.keymap.set("n", "<leader>q", vim.cmd.Quit)
-- Keybinding for deleting a line without affecting the clipboard
vim.api.nvim_set_keymap('n', '<leader>d', '"_dd', { noremap = true, silent = true })

-- Keybinding for deleting a word without affecting the clipboard
vim.api.nvim_set_keymap('n', '<leader>w', '"_dw', { noremap = true, silent = true })

-- Keybinding for changing a line without affecting the clipboard
vim.api.nvim_set_keymap('n', '<leader>c', '"_cc', { noremap = true, silent = true })

-- Keybinding for visual selection delete without affecting the clipboard
vim.api.nvim_set_keymap('v', '<leader>d', '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>d', '"_dG', { noremap = true, silent = true })

vim.g.mapleader = " "
-- plus more settings as needed
vim.keymap.set("n", "<leader>t", vim.cmd.ToggleTerm)
vim.keymap.set("n", "<leader>q", vim.cmd.Quit)

-- Disable clipboard for delete operations in normal mode
vim.keymap.set('n', 'd', '"_d')
vim.keymap.set('n', 'dd', '"_dd')

-- Disable clipboard for delete operations in visual mode
vim.keymap.set('v', 'd', '"_d')


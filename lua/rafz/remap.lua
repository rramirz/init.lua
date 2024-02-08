vim.g.mapleader = " "
-- plus more settings as needed
vim.keymap.set("n", "<leader>t", vim.cmd.ToggleTerm)
vim.keymap.set("n", "<leader>q", vim.cmd.Quit)
vim.keymap.set('n', '<leader>x',
  ':lua (function() local isGitRepo = vim.fn.system("git rev-parse --is-inside-work-tree"):find("true") if isGitRepo then vim.cmd("Neotree reveal_force_cwd") else vim.cmd("Neotree toggle") end end)()<CR>',
  { noremap = true, silent = true })

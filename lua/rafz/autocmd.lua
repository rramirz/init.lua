vim.cmd [[
  autocmd BufLeave * silent! update
]]

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = "*.tfvars",
    command = "set filetype=hcl",
})


vim.cmd [[
  autocmd BufLeave * silent! update
]]

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = "*.tfvars",
    command = "set filetype=hcl",
})

local function refresh_neotree()
    if vim.fn.exists("*NeoTreeShowToggle") == 1 then
        vim.cmd("NeoTreeShowToggle")
        vim.cmd("NeoTreeShowToggle")
    end
end

vim.api.nvim_create_augroup("NeoTreeBufferSwitchRefresh", { clear = true })
vim.api.nvim_create_autocmd("BufLeave", {
    pattern = "*",
    callback = refresh_neotree,
    group = "NeoTreeBufferSwitchRefresh",
})

vim.api.nvim_create_augroup("LspAutoRestart", { clear = true })
vim.api.nvim_create_autocmd("BufWinEnter", {
    pattern = "*",
    command = "LspRestart",
    group = "LspAutoRestart",
})


local function getCurrentK8sContext()
  local handle = io.popen("kubectl config current-context")
  local result = handle:read("*a")
  handle:close()
  return result:gsub("%s+", "") -- Remove any trailing whitespace
end

local function getK8sNs()
  local handle = io.popen("kubectl config view --minify --output 'jsonpath={..namespace}'")
  local result = handle:read("*a")
  handle:close()
  return result:gsub("%s+", "") -- Remove any trailing whitespace
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {
        'packer',
        'neo-tree'
      },
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = {
      { 'filename', path = 1 }, -- Show relative path to the file
      getCurrentK8sContext,
      getK8sNs
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

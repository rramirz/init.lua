require("bufferline").setup{
  options = {
    numbers = "ordinal", -- "buffer_id" or "both" or "ordinal"
    close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
    -- Add custom indicators
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    -- Customization
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 18,
    diagnostics = "nvim_lsp", -- "nvim_lsp" | false | "coc"
    diagnostics_update_in_insert = false,
    offsets = {
        {
            filetype = "neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true -- use a "true" to enable the default, or set your own character
        }
    },
    show_buffer_icons = true, -- disable filetype icons for buffers
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether to keep buffer order when sessions are restored
    separator_style = "thin", -- "slant" | "thick" | "thin" | { 'any', 'any' },
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    sort_by = 'id' -- 'id' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
  },
}


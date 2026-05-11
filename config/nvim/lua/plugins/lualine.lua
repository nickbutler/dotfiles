require('lualine').setup({
  options = {
    theme = 'nordfox',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = { 'vim-plug', 'ranger', 'tig' },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', { 'diff', symbols = { added = ' ', modified = ' ', removed = ' ' } }, 'diagnostics' },
    lualine_c = { 'filename' },
    lualine_x = { 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
})

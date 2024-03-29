require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'decaydk',
    --section_separators = { left = '', right = '' },
    section_separators = { left = '|', right = '|' },
    --component_separators = { left = '', right = '' },
    component_separators = { left = '|', right = '|' },
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {'branch', 'diff', 'diagnostics'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {'neo-tree'}
}

vim.cmd[[
]]

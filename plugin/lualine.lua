local gps = require("nvim-gps")

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'onelight',
        disabled_filetypes = {}
    },

    sections = {
        lualine_a = {'mode'},
        lualine_b = {{'branch'}, {'diff'}},
        lualine_c = {
            {'filename'}, {gps.get_location, condition = gps.is_available}
        },
        lualine_x = {
            {
                'diagnostics',
                sources = {'nvim_lsp'},
                color_error = "#BF616A",
                color_warn = "#EBCB8B",
                color_info = "#81A1AC",
                color_hint = "#88C0D0",
                symbols = {error = ' ', warn = ' ', info = ' '}
            }, {'encoding'}, {'fileformat'}
        },
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
    extensions = {}
}

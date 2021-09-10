local home = os.getenv("HOME")

require('telescope').setup {
    defaults = {
        prompt_prefix = '🔭 ',
        selection_caret = " ",
        layout_config = {
            horizontal = {prompt_position = "bottom", results_width = 0.6},
            vertical = {mirror = false}
        },
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
        file_sorter = require("telescope.sorters").get_fuzzy_file,
        file_ignore_patterns = {},
        generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
        path_display = {"absolute"},
        winblend = 0,
        border = {},
        borderchars = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"},
        color_devicons = true,
        use_less = true,
        set_env = {["COLORTERM"] = "truecolor"}
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true
        },
        frecency = {
            show_scores = true,
            show_unindexed = true,
            ignore_patterns = {"*.git/*", "*/tmp/*"},
            workspaces = {
                ["conf"] = home .. "/.config",
                ["data"] = home .. "/.local/share",
                ["nvim"] = home .. "/.config/nvim",
                ["code"] = home .. "/code",
                ["c"] = home .. "/code/c",
                ["cpp"] = home .. "/code/cpp",
                ["go"] = home .. "/go/src",
                ["rust"] = home .. "/code/rs"
            }
        }
    }
}
require('telescope').load_extension('fzy_native')
require('telescope').load_extension('project')
require('telescope').load_extension('frecency')

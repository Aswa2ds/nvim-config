local ui = {}
local conf = require('modules.ui.config')

ui['kyazdani42/nvim-web-devicons'] = {opt = false}
ui['sainnhe/edge'] = {opt = false, config = conf.edge}
ui['hoob3rt/lualine.nvim'] = {
    opt = true,
    after = 'nvim-gps',
    config = conf.lualine
}
ui['glepnir/dashboard-nvim'] = {opt = true, event = "BufWinEnter"}
ui['kyazdani42/nvim-tree.lua'] = {
    opt = true,
    cmd = {'NvimTreeToggle', 'NvimTreeOpen'},
    config = conf.nvim_tree
}
-- ui['ryanoasis/vim-devicons'] = {
--     config = conf.vim_devicons
-- }
-- ui['preservim/nerdtree'] = {
--     config = conf.nerdtree
-- }
-- ui['Xuyuanp/nerdtree-git-plugin'] = {
--     config = conf.nerdtree_git_plugin
-- }
-- ui['tiagofumo/vim-nerdtree-syntax-highlight'] = {
-- }
-- ui['lewis6991/gitsigns.nvim'] = {
--     opt = true,
--     event = {'BufRead', 'BufNewFile'},
--     config = conf.gitsigns,
--     requires = {'nvim-lua/plenary.nvim', opt = true}
-- }
ui['airblade/vim-gitgutter'] = {
    opt = true,
    event = {'BufRead', 'BufNewFile'},
    config = conf.vim_gitgutter
}
ui['lukas-reineke/indent-blankline.nvim'] = {
    opt = true,
    event = 'BufRead',
    config = conf.indent_blankline
}
ui['akinsho/nvim-bufferline.lua'] = {
    opt = true,
    event = 'BufRead',
    config = conf.nvim_bufferline
}
ui['folke/zen-mode.nvim'] = {
    opt = true,
    cmd = 'ZenMode',
    config = conf.zen_mode
}
ui['folke/twilight.nvim'] = {
    opt = true,
    cmd = {'Twilight', 'TwilightEnable'},
    config = conf.twilight
}

return ui

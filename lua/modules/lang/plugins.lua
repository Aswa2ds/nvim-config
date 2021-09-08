local lang = {}
local conf = require('modules.lang.config')

lang['fatih/vim-go'] = {
    opt = true,
    ft = 'go',
    run = ':GoInstallBinaries',
    config = conf.lang_go
}
lang['rust-lang/rust.vim'] = {opt = true, ft = "rust"}
lang['simrat39/rust-tools.nvim'] = {
    opt = true,
    ft = "rust",
    config = conf.rust_tools
}
lang['kristijanhusak/orgmode.nvim'] = {
    opt = true,
    ft = "org",
    config = conf.lang_org
}
lang['ferrine/md-img-paste.vim'] = {
    ft = "markdown",
    config = conf.md_img_paste
}
-- lang['godlygeek/tabular'] = {
--     opt = true,
--     ft = "markdown"
-- }
-- lang['plasticboy/vim-markdown'] = {
--     opt = true,
--     ft = "markdown",
--     after = 'tabular'   
-- }
lang['vim-pandoc/vim-pandoc'] = {
    opt = true,
    ft = "markdown"
}
lang['vim-pandoc/vim-pandoc-syntax'] = {
    opt = true,
    ft = "markdown",
    config = conf.vim_pandoc_syntax
}
lang['mzlogin/vim-markdown-toc'] = {
    opt = true,
    ft = "markdown",
    config = conf.vim_markdown_toc
}
lang['iamcco/markdown-preview.nvim'] = {
    opt = true,
    ft = "markdown",
    run = 'cd app && yarn install',
    config = conf.mkdp
}
return lang

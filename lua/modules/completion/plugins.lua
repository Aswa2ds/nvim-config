local completion = {}
local conf = require('modules.completion.config')

completion['neoclide/coc.nvim'] = {
    config = conf.coc
}
completion['jiangmiao/auto-pairs'] = {
}
completion['buoto/gotests-vim'] = {
}

return completion

local ui = {}
local conf = require("modules.ui.config")

ui["kyazdani42/nvim-web-devicons"] = { opt = false }
ui["EdenEast/nightfox.nvim"] = { opt = false }
ui["hoob3rt/lualine.nvim"] = {
	opt = true,
	after = "lualine-lsp-progress",
	config = conf.lualine,
}
ui["SmiteshP/nvim-gps"] = {
	opt = true,
	after = "nvim-treesitter",
	config = conf.nvim_gps,
}
ui["arkav/lualine-lsp-progress"] = { opt = true, after = "nvim-gps" }
ui["kyazdani42/nvim-tree.lua"] = {
	opt = true,
	event = "BufRead",
	config = conf.nvim_tree,
}
ui["lewis6991/gitsigns.nvim"] = {
	opt = true,
	event = { "BufRead", "BufNewFile" },
	config = conf.gitsigns,
	requires = { "nvim-lua/plenary.nvim", opt = true },
}
ui["lukas-reineke/indent-blankline.nvim"] = {
	opt = true,
	event = "BufRead",
	config = conf.indent_blankline,
}
ui["akinsho/bufferline.nvim"] = {
	opt = true,
	event = "BufRead",
	config = conf.nvim_bufferline,
}

return ui

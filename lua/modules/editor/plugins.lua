local editor = {}
local conf = require("modules.editor.config")

editor["junegunn/vim-easy-align"] = { opt = true, cmd = "EasyAlign" }
editor["terrortylor/nvim-comment"] = {
	opt = false,
	config = conf.nvim_comment
}
editor["nvim-treesitter/nvim-treesitter"] = {
	opt = true,
	run = ":TSUpdate",
	event = "BufRead",
	config = conf.nvim_treesitter,
}
editor["nvim-treesitter/nvim-treesitter-textobjects"] = {
	opt = true,
	after = "nvim-treesitter",
}
editor["romgrk/nvim-treesitter-context"] = {
	opt = true,
	after = "nvim-treesitter",
}
editor["p00f/nvim-ts-rainbow"] = {
	opt = true,
	after = "nvim-treesitter",
	event = "BufRead",
}
editor["JoosepAlviste/nvim-ts-context-commentstring"] = {
	opt = true,
	after = "nvim-treesitter",
}
editor["mfussenegger/nvim-ts-hint-textobject"] = {
	opt = true,
	after = "nvim-treesitter",
}
editor["windwp/nvim-ts-autotag"] = {
	opt = true,
	ft = { "html", "xml" },
	config = conf.autotag,
}
editor["rhysd/accelerated-jk"] = { opt = true, event = "BufReadPost" }
editor["hrsh7th/vim-eft"] = { opt = true, event = "BufReadPost" }
editor["romainl/vim-cool"] = {
	opt = true,
	event = { "CursorMoved", "InsertEnter" },
}
editor["karb94/neoscroll.nvim"] = {
	opt = true,
	event = "WinScrolled",
	config = conf.neoscroll,
}
editor["numtostr/FTerm.nvim"] = { opt = true, event = "BufRead" }
editor["norcalli/nvim-colorizer.lua"] = {
	opt = true,
	event = "BufRead",
	config = conf.nvim_colorizer,
}
editor["rmagatti/auto-session"] = {
	opt = true,
	cmd = { "SaveSession", "RestoreSession", "DeleteSession" },
	config = conf.auto_session,
}
editor["jdhao/better-escape.vim"] = { opt = true, event = "InsertEnter" }
editor["tpope/vim-fugitive"] = { opt = true, cmd = { "Git", "G" } }
editor["famiu/bufdelete.nvim"] = {
	opt = true,
	cmd = { "Bdelete", "Bwipeout", "Bdelete!", "Bwipeout!" },
}
editor["edluffy/specs.nvim"] = {
	opt = true,
	event = "CursorMoved",
	config = conf.specs,
}
editor["abecodes/tabout.nvim"] = {
	opt = true,
	event = "InsertEnter",
	wants = "nvim-treesitter",
	after = "nvim-cmp",
	config = conf.tabout,
}
editor["sindrets/diffview.nvim"] = {
	opt = true,
	cmd = { "DiffviewOpen" },
}

return editor

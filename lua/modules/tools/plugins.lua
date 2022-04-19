local tools = {}
local conf = require("modules.tools.config")

tools["RishabhRD/popfix"] = { opt = false }
tools["nvim-lua/plenary.nvim"] = { opt = false }
tools["michaelb/sniprun"] = {
	opt = true,
	run = "bash ./install.sh",
	cmd = { "SnipRun", "'<,'>SnipRun" },
}
tools["folke/which-key.nvim"] = {
	opt = true,
	keys = ",",
	config = function()
		require("which-key").setup({})
	end,
}
tools["folke/trouble.nvim"] = {
	opt = true,
	cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
	config = conf.trouble,
}
tools["dstein64/vim-startuptime"] = { opt = true, cmd = "StartupTime" }
tools["gelguy/wilder.nvim"] = {
	event = "CmdlineEnter",
	config = conf.wilder,
	requires = { { "romgrk/fzy-lua-native", after = "wilder.nvim" } },
}
tools["nathom/filetype.nvim"] = {
	opt = false,
	config = conf.filetype,
}
tools["akinsho/toggleterm.nvim"] = {
	opt = false,
	config = conf.toggleterm
}

return tools

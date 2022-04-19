local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
require("keymap.config")

local plug_map = {
	-- Bufferline
	["n|gb"] = map_cr("BufferLinePick"):with_noremap():with_silent(),
	["n|<A-j>"] = map_cr("BufferLineCycleNext"):with_noremap():with_silent(),
	["n|<A-k>"] = map_cr("BufferLineCyclePrev"):with_noremap():with_silent(),
	["n|<A-S-j>"] = map_cr("BufferLineMoveNext"):with_noremap():with_silent(),
	["n|<A-S-k>"] = map_cr("BufferLineMovePrev"):with_noremap():with_silent(),
	["n|<leader>be"] = map_cr("BufferLineSortByExtension"):with_noremap(),
	["n|<leader>bd"] = map_cr("BufferLineSortByDirectory"):with_noremap(),
	["n|<A-1>"] = map_cr("BufferLineGoToBuffer 1"):with_noremap():with_silent(),
	["n|<A-2>"] = map_cr("BufferLineGoToBuffer 2"):with_noremap():with_silent(),
	["n|<A-3>"] = map_cr("BufferLineGoToBuffer 3"):with_noremap():with_silent(),
	["n|<A-4>"] = map_cr("BufferLineGoToBuffer 4"):with_noremap():with_silent(),
	["n|<A-5>"] = map_cr("BufferLineGoToBuffer 5"):with_noremap():with_silent(),
	["n|<A-6>"] = map_cr("BufferLineGoToBuffer 6"):with_noremap():with_silent(),
	["n|<A-7>"] = map_cr("BufferLineGoToBuffer 7"):with_noremap():with_silent(),
	["n|<A-8>"] = map_cr("BufferLineGoToBuffer 8"):with_noremap():with_silent(),
	["n|<A-9>"] = map_cr("BufferLineGoToBuffer 9"):with_noremap():with_silent(),
	-- Packer
	["n|<leader>ps"] = map_cr("PackerSync"):with_silent():with_noremap():with_nowait(),
	["n|<leader>pu"] = map_cr("PackerUpdate"):with_silent():with_noremap():with_nowait(),
	["n|<leader>pi"] = map_cr("PackerInstall"):with_silent():with_noremap():with_nowait(),
	["n|<leader>pc"] = map_cr("PackerClean"):with_silent():with_noremap():with_nowait(),
	-- Plugin vim-go
	["n|<leader>gr"] = map_cr("GoRun"):with_silent():with_noremap():with_nowait(),
	["n|<leader>gts"] = map_cr("GoTests"):with_silent():with_noremap():with_nowait(),
	["n|<leader>gt"] = map_cr("GoTest"):with_silent():with_noremap():with_nowait(),
	["n|<leader>gfs"] = map_cr("GoFillStruct"):with_silent():with_noremap():with_nowait(),
	["n|<leader>gtf"] = map_cr("GoTestFunc"):with_silent():with_noremap():with_nowait(),
	["n|<leader>gf"] =  map_cr("GoFmt"):with_silent():with_noremap():with_nowait(),
	["n|<leader>gdtf"] =  map_cr("GoDebugTestFunc"):with_silent():with_noremap():with_nowait(),
	["n|<leader>gdt"] =  map_cr("GoDebugTest"):with_silent():with_noremap():with_nowait(),
	["n|<leader>gdb"] =  map_cr("GoDebugBreakpoint"):with_silent():with_noremap():with_nowait(),
	["n|<leader>gdc"] =  map_cr("GoDebugContinue"):with_silent():with_noremap():with_nowait(),
	["n|<leader>gdsi"] =  map_cr("GoDebugStep"):with_silent():with_noremap():with_nowait(),
	["n|<leader>gdso"] =  map_cr("GoDebugStepOut"):with_silent():with_noremap():with_nowait(),
	-- Lsp mapp work when insertenter and lsp start
	["n|<leader>li"] = map_cr("LspInfo"):with_noremap():with_silent():with_nowait(),
	["n|<leader>lr"] = map_cr("LspRestart"):with_noremap():with_silent():with_nowait(),
	["n|g["] = map_cr("Lspsaga diagnostic_jump_next"):with_noremap():with_silent(),
	["n|g]"] = map_cr("Lspsaga diagnostic_jump_prev"):with_noremap():with_silent(),
	["n|gs"] = map_cr("Lspsaga signature_help"):with_noremap():with_silent(),
	["n|gr"] = map_cr("Lspsaga rename"):with_noremap():with_silent(),
	["n|K"] = map_cr("Lspsaga hover_doc"):with_noremap():with_silent(),
	["n|<C-Up>"] = map_cr("lua require('lspsaga.action').smart_scroll_with_saga(-1)"):with_noremap():with_silent(),
	["n|<C-Down>"] = map_cr("lua require('lspsaga.action').smart_scroll_with_saga(1)"):with_noremap():with_silent(),
	["n|<leader>ca"] = map_cr("Lspsaga code_action"):with_noremap():with_silent(),
	["v|<leader>ca"] = map_cu("Lspsaga range_code_action"):with_noremap():with_silent(),
	["n|gd"] = map_cr("Lspsaga preview_definition"):with_noremap():with_silent(),
	["n|gD"] = map_cr("lua vim.lsp.buf.definition()"):with_noremap():with_silent(),
	["n|gh"] = map_cr("lua vim.lsp.buf.references()"):with_noremap():with_silent(),
	-- Plugin FTerm
	["n|<A-d>"] = map_cu('lua require("FTerm").toggle()'):with_noremap():with_silent(),
	["t|<A-d>"] = map_cu([[<C-\><C-n><CMD>lua require("FTerm").toggle()]]):with_noremap():with_silent(),
	["t|<A-S-d>"] = map_cu([[<C-\><C-n><CMD>lua require("FTerm").exit()]]):with_noremap():with_silent(),
	-- Plugin toggleterm
	["n|<leader>d"] = map_cr("ToggleTerm direction=horizontal size=20"):with_noremap():with_silent(),
	-- Plugin gitfusive
	["n|<Leader>G"] = map_cu("Git"):with_noremap():with_silent(),
	["n|gps"] = map_cr("G push"):with_noremap():with_silent(),
	["n|gpl"] = map_cr("G pull"):with_noremap():with_silent(),
	-- Plugin trouble
	["n|gt"] = map_cr("TroubleToggle"):with_noremap():with_silent(),
	["n|gR"] = map_cr("TroubleToggle lsp_references"):with_noremap():with_silent(),
	["n|<leader>cd"] = map_cr("TroubleToggle lsp_document_diagnostics"):with_noremap():with_silent(),
	["n|<leader>cw"] = map_cr("TroubleToggle lsp_workspace_diagnostics"):with_noremap():with_silent(),
	["n|<leader>cq"] = map_cr("TroubleToggle quickfix"):with_noremap():with_silent(),
	["n|<leader>cl"] = map_cr("TroubleToggle loclist"):with_noremap():with_silent(),
	-- Plugin nvim-tree
	["n|<C-n>"] = map_cr("NvimTreeToggle"):with_noremap():with_silent(),
	["n|<Leader>nf"] = map_cr("NvimTreeFindFile"):with_noremap():with_silent(),
	["n|<Leader>nr"] = map_cr("NvimTreeRefresh"):with_noremap():with_silent(),
	-- Plugin Aerial
	["n|<A-t>"] = map_cr("AerialToggle! right"):with_noremap():with_silent(),
	-- Plugin accelerate-jk
	["n|j"] = map_cmd("v:lua.enhance_jk_move('j')"):with_silent():with_expr(),
	["n|k"] = map_cmd("v:lua.enhance_jk_move('k')"):with_silent():with_expr(),
	-- Plugin vim-eft
	["n|f"] = map_cmd("v:lua.enhance_ft_move('f')"):with_expr(),
	["n|F"] = map_cmd("v:lua.enhance_ft_move('F')"):with_expr(),
	["n|t"] = map_cmd("v:lua.enhance_ft_move('t')"):with_expr(),
	["n|T"] = map_cmd("v:lua.enhance_ft_move('T')"):with_expr(),
	["n|;"] = map_cmd("v:lua.enhance_ft_move(';')"):with_expr(),
	-- Plugin EasyAlign
	["n|ga"] = map_cmd("v:lua.enhance_align('nga')"):with_expr(),
	["x|ga"] = map_cmd("v:lua.enhance_align('xga')"):with_expr(),
	-- Plugin auto_session
	["n|<leader>ss"] = map_cu("SaveSession"):with_noremap():with_silent(),
	["n|<leader>sr"] = map_cu("RestoreSession"):with_noremap():with_silent(),
	["n|<leader>sd"] = map_cu("DeleteSession"):with_noremap():with_silent(),
	-- Plugin SnipRun
	["v|<leader>r"] = map_cr("SnipRun"):with_noremap():with_silent(),
	-- Plugin Tabout
	["i|<A-l>"] = map_cmd([[<Plug>(TaboutMulti)]]):with_silent(),
	["i|<A-h>"] = map_cmd([[<Plug>(TaboutBackMulti)]]):with_silent(),
	-- Plugin Diffview
	["n|<leader>D"] = map_cr("DiffviewOpen"):with_silent():with_noremap(),
	["n|<leader><leader>D"] = map_cr("DiffviewClose"):with_silent():with_noremap(),
}

bind.nvim_load_mapping(plug_map)

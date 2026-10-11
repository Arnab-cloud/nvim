-- ~/.config/nvim/lua/plugins/fidget.lua
return {
	"j-hui/fidget.nvim",
	event = "LspAttach", -- Only load when an LSP actually connects
	opts = {
		notification = {
			window = {
				winblend = 0, -- 0 = fully opaque; raise it (e.g. 20-40) for a see-through look
			},
		},
	},
}

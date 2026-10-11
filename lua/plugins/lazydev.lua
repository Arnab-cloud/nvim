-- Gives lua_ls the Neovim runtime types, so `vim.*` is known and completed
-- without needing "diagnostics.globals" in .luarc.json.
return {
	"folke/lazydev.nvim",
	ft = "lua",
	opts = {
		library = {
			-- load luv types when `vim.uv` is mentioned
			{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
		},
	},
}

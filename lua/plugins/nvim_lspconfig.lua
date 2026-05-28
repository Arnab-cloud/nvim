return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("clangd")
		vim.lsp.enable("gopls")
		vim.lsp.enable("rust_analyzer")
		vim.diagnostic.config({
			-- Enable virtual text (this puts the warning/error after the line's last character)
			virtual_text = {
				spacing = 4, -- Distance from the last character of the code
				source = "if_many", -- Shows the source of the diagnostic (e.g., "gopls", "clangd")
				prefix = "■", -- A little marker before the message (you can use '●', '»', etc.)
			},
			-- Keep underlines under the breaking code
			underline = true,

			-- Do not update diagnostics while typing (waits until you leave insert mode/save)
			update_in_insert = false,

			-- Show hover windows with a nice border
			float = {
				border = "rounded",
				source = "always",
			},
		})
	end,
}

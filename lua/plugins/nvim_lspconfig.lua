return {
	"neovim/nvim-lspconfig",
	dependencies = { "hrsh7th/cmp-nvim-lsp" },
	config = function()
		vim.lsp.config("*", {
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
		})

		-- Servers installed through mason (see mason-tool-installer.lua)
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("clangd")
		vim.lsp.enable("gopls")
		vim.lsp.enable("rust_analyzer")

		-- Machine-specific binaries: only used when they actually exist, so the
		-- config doesn't break on a machine without these paths.
		local gopls_path = [[D:\coding\oss\tools\gopls\gopls.exe]]
		if vim.uv.fs_stat(gopls_path) then
			vim.lsp.config("gopls", { cmd = { gopls_path } })
		end

		local bidhulsp_path = [[D:\coding\bidhulsp\target\debug\bidhulsp.exe]]
		if vim.uv.fs_stat(bidhulsp_path) then
			vim.lsp.config("bidhulsp", {
				cmd = { bidhulsp_path, "--stdio" },
				filetypes = { "bidhuscript" },
				root_markers = { ".git" },
			})
			vim.lsp.enable("bidhulsp")
		end

		vim.diagnostic.config({
			-- Enable virtual text (this puts the warning/error after the line's last character)
			virtual_text = {
				spacing = 4, -- Distance from the last character of the code
				source = "if_many", -- Shows the source of the diagnostic (e.g., "gopls", "clangd")
				prefix = "■", -- A little marker before the message (you can use '●', '»', etc.)
			},
			-- Keep underlines under the breaking code
			underline = true,

			signs = false,

			-- Do not update diagnostics while typing (waits until you leave insert mode/save)
			update_in_insert = false,

			-- Show errors before warnings when several diagnostics overlap
			severity_sort = true,

			-- Make the default ]d / [d open the float after jumping
			jump = { float = true },

			-- Border comes from 'winborder'
			float = {
				source = "always",
			},
		})
	end,
}

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		-- Custom parser. On the `main` branch it must be registered from a
		-- `User TSUpdate` autocmd, and this has to exist before install() runs.
		-- The filetype is `bidhuscript` (see init.lua), which already matches the
		-- parser name, so no vim.treesitter.language.register() call is needed.
		vim.api.nvim_create_autocmd("User", {
			pattern = "TSUpdate",
			callback = function()
				require("nvim-treesitter.parsers").bidhuscript = {
					install_info = {
						-- path = '~/coding/tree-sitter-bidhuscript',
						url = "https://github.com/Arnab-cloud/tree-sitter-bidhuscript",
						-- generate = true,
						-- generate_from_json = false,
						-- queries = 'queries/neovim', -- symlink queries from given directory
					},
				}
			end,
		})

		local parsers = {
			"lua",
			"rust",
			"go",
			"vim",
			"vimdoc",
			"query",
			"markdown",
			"markdown_inline",
		}
		-- Building parsers from source needs the `tree-sitter` CLI on PATH.
		if vim.fn.executable("tree-sitter") == 1 then
			table.insert(parsers, "bidhuscript")
		end
		require("nvim-treesitter").install(parsers)

		-- The `main` branch only installs parsers. Highlighting has to be
		-- started per buffer; pcall() skips filetypes without an installed parser.
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				pcall(vim.treesitter.start, args.buf)
			end,
		})

		-- Optional (experimental): treesitter-based indentation.
		-- vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
}

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
			"lua",
			"rust",
			"go",
			"vim",
			"vimdoc",
			"query",
			"markdown",
			"markdown_inline",
		})

		vim.api.nvim_create_autocmd("User", {
			pattern = "TSUpdate",
			callback = function()
				require("nvim-treesitter.parsers").bidhuscript = {
					install_info = {
						-- path = '~/coding/tree-sitter-bidhuscript',
						url = "https://github.com/Arnab-cloud/tree-sitter-bidhuscript",
						-- optional entries
						-- generate = true,
						-- generate_from_json = false,
						-- queries = 'queries/neovim', -- symlink queries from given directory
					},
				}
			end,
		})

		vim.treesitter.language.register("bidhuscript", { "bidhu" })
	end,
}

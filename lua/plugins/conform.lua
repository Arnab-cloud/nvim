return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "ruff", "isort", "black", stop_after_first = true },
			-- You can customize some of the format options for the filetype (:help conform.format)
			rust = { "rustfmt", lsp_format = "fallback" },
			go = { "goimports", "gofmt" },
			-- Conform will run the first available formatter
			javascript = { "prettierd", "prettier", stop_after_first = true },
		},
		format_on_save = {
			timeout_ms = 500,
		},
		-- Set default options
		default_format_opts = {
			lsp_format = "fallback",
		},
	},
	--  config = function()
	--      vim.keymap.set("n", "<C-f>", function() require("conform").format() end, { desc = "Telescope find files" })
	--  end
}

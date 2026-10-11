return {
	"akinsho/bufferline.nvim",
	tag = "v4.9.1",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "VeryLazy",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				always_show_bufferline = false,
				separator_style = "slant",
				show_buffer_close_icons = true,
				show_close_icon = true,
				color_icons = true,
				diagnostics = "nvim_lsp", -- shows LSP error/warning badges right in the tab
			},
		})

		-- Keymaps for quick navigation (BuffLine Cycle)
		vim.keymap.set("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Tab" })
		vim.keymap.set("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Tab" })
		-- Not `bdelete!`: that would throw away unsaved changes without asking
		vim.keymap.set("n", "<leader>x", "<cmd>bdelete<cr>", { desc = "Close current buffer" })
		vim.keymap.set("n", "<leader>bj", "<cmd>BufferLinePick<cr>", { desc = "Pick Buffer" })
	end,
}

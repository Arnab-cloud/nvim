-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
--
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- lsp
-- Neovim already provides these defaults, so they are not remapped here:
--   grn rename | gra code action | grr references | gri implementation
--   grt type definition | gO document symbols | <C-S> (insert) signature help
--   ]d / [d next/prev diagnostic (the float is configured in nvim_lspconfig.lua)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "K", function()
	vim.lsp.buf.hover({
		max_width = 80,
		max_height = 20,
	})
end)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set({ "n", "v" }, "<leader>.", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol)
vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float)
vim.keymap.set("n", "<C-h>", vim.lsp.buf.signature_help)

-- Jump to the last active buffer (alternate file)
vim.keymap.set("n", "<leader>l", "<cmd>e #<cr>", { desc = "Go to last active buffer" })

-- terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

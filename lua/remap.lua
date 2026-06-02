-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
--
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- lsp
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "K", function()
    vim.lsp.buf.hover({
        border = "rounded",
        max_width = 80,
        max_height = 20,
    })
end)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set({ "n", "v" }, "<leader>.", vim.lsp.buf.code_action)
vim.keymap.set("n", "gr", vim.lsp.buf.references)

vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol)
vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float)

vim.keymap.set("n", "]d", function()
    vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Next diagnostic" })
vim.keymap.set("n", "[d", function()
    vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Previous diagnostic" })

vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references)
vim.keymap.set("n", "<C-h>", vim.lsp.buf.signature_help)

vim.keymap.set("i", "<c-space>", function()
    vim.lsp.completion.get()
end)

-- Jump to the last active buffer (alternate file)
vim.keymap.set("n", "<leader>l", "<cmd>e #<cr>", { desc = "Go to last active buffer" })

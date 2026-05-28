require("remap") -- global remaps

require("config.lazy")

vim.opt.number = true
vim.opt.relativenumber = true -- for realtive line number

vim.opt.tabstop = 4 -- number of spaces a <Tab> in the text stands for
vim.opt.shiftwidth = 4 -- number of spaces used for each step of (auto)indent
vim.opt.expandtab = true -- expand <Tab> to spaces in Insert mode
vim.opt.softtabstop = 4 -- if non-zero, number of spaces to insert for a <Tab>

vim.opt.autoindent = true

vim.cmd([[set completeopt+=menuone,noselect,popup]])

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		-- Verify the client exists before enabling completion
		if client then
			vim.lsp.completion.enable(true, client.id, args.buf)
		end
	end,
})

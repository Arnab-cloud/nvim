require("remap") -- global remaps

vim.opt.number = true
vim.opt.relativenumber = true -- for realtive line number

vim.opt.tabstop = 4 -- number of spaces a <Tab> in the text stands for
vim.opt.shiftwidth = 4 -- number of spaces used for each step of (auto)indent
vim.opt.expandtab = true -- expand <Tab> to spaces in Insert mode
vim.opt.softtabstop = 4 -- if non-zero, number of spaces to insert for a <Tab>

vim.opt.autoindent = true

vim.opt.scrolloff = 10 -- keeps 10 rows below and above the cursor

vim.o.winborder = "rounded" -- keeps the border rounded

vim.cmd([[set completeopt+=menuone,noselect,popup]])

require("config.lazy")

vim.filetype.add({ extension = { bidhu = "bidhuscript" } })

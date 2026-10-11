require("remap") -- global remaps

vim.opt.number = true
vim.opt.relativenumber = true -- for realtive line number

vim.opt.tabstop = 4 -- number of spaces a <Tab> in the text stands for
vim.opt.shiftwidth = 4 -- number of spaces used for each step of (auto)indent
vim.opt.expandtab = true -- expand <Tab> to spaces in Insert mode
vim.opt.softtabstop = 4 -- if non-zero, number of spaces to insert for a <Tab>

vim.opt.scrolloff = 10 -- keeps 10 rows below and above the cursor
vim.opt.cursorline = true -- highlight the current line
vim.opt.signcolumn = "yes" -- always show the sign column so the text doesn't shift (gitsigns)
vim.opt.splitright = true -- vertical splits open on the right
vim.opt.splitbelow = true -- horizontal splits open below
vim.opt.ignorecase = true -- case-insensitive search...
vim.opt.smartcase = true -- ...unless the pattern has an uppercase letter
vim.opt.undofile = true -- keep undo history across sessions
vim.opt.updatetime = 250 -- faster CursorHold / swap writes

vim.o.winborder = "rounded" -- keeps the border rounded

require("config.lazy")

vim.filetype.add({ extension = { bidhu = "bidhuscript" } })

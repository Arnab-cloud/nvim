return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			color_overrides = {
				mocha = {
					-- base = "#181825", -- main editor background (default #1e1e2e)
					base = "#111117", -- main editor background (default #1e1e2e)
					mantle = "#11111b", -- sidebars, floating windows (default #181825)
					crust = "#0b0b12", -- borders, deepest layer (default #11111b)
				},
			},
			integrations = {
				cmp = true, -- Turns on Catppuccin styling for nvim-cmp
				gitsigns = true,
				lualine = true,
				mason = true,
				telescope = { enabled = true },
				-- Any other integrations you want...
			},
		})
		vim.cmd.colorscheme("catppuccin-nvim")
	end,
}

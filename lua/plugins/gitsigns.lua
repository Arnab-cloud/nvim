return {
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("gitsigns").setup({
				on_attach = function(bufnr)
					local gs = require("gitsigns")
					local function map(lhs, rhs, desc)
						vim.keymap.set("n", lhs, rhs, { buffer = bufnr, desc = desc })
					end

					map("<leader>hp", gs.preview_hunk, "Preview Git Hunk")
					map("<leader>hs", gs.stage_hunk, "Stage Git Hunk")
					map("<leader>hr", gs.reset_hunk, "Reset Git Hunk")
					map("<leader>hb", function()
						gs.blame_line({ full = true })
					end, "Blame line")
					map("]h", function()
						gs.nav_hunk("next")
					end, "Next Git Hunk")
					map("[h", function()
						gs.nav_hunk("prev")
					end, "Prev Git Hunk")
				end,
			})
		end,
	},
}

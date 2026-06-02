return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            falvour = "mocha",
            integrations = {
                cmp = true, -- Turns on Catppuccin styling for nvim-cmp
                treesitter = true,
                telescope = { enabled = true },
                -- Any other integrations you want...
            },
        })
        vim.cmd.colorscheme("catppuccin-nvim")
    end
}

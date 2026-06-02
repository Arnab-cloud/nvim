-- ~/.config/nvim/lua/plugins/lualine.lua
return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons", "catppuccin" },
        event = "VeryLazy",
        config = function()
            require("lualine").setup({
                options = {
                    theme = "catppuccin", -- Automatically matches your flavor (mocha, frappe, etc.)
                    component_separators = { left = "│", right = "│" },
                    section_separators = { left = "", right = "" }, -- Rounded pill-shaped edges
                    globalstatus = true, -- Keeps a single global statusline at the very bottom
                },
                sections = {
                    lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
                    lualine_b = { "branch", "diff", "diagnostics" },
                    lualine_c = { { "filename", path = 1 } }, -- Shows relative path (e.g., src/main.rs)
                    lualine_x = { "encoding", "fileformat", "filetype" },
                    lualine_y = { "progress" },
                    lualine_z = { { "location", separator = { right = "" }, left_padding = 2 } },
                },
            })
        end
    }
}

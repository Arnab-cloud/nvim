-- ~/.config/nvim/lua/plugins/fidget.lua
return {
    {
        "j-hui/fidget.nvim",
        event = "LspAttach", -- Only load when an LSP actually connects
        opts = {
            notification = {
                window = {
                    winblend = 0, -- Makes the background completely transparent to match Catppuccin
                },
            },
        },
    }
}

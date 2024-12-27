require("zain.remap")
require("zain.set")
require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,
    integrations = {
        cmp = true,
        nvimtree = true,
    },
})

vim.cmd.colorscheme "catppuccin"

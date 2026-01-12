    --[[
    --
return     {
    "andrewferrier/wrapping.nvim",
    config = function()
        require("wrapping").setup()
    end,
}
    --]]

return     {
    "preservim/vim-pencil",
    config = function()
        vim.g["pencil#wrapModeDefault"] = "soft"
        vim.g["pencil#textwidth"] = 74
    end,
}

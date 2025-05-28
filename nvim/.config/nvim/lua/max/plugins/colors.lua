return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
    	require("gruvbox").setup({})
    	vim.cmd([[
    		colorscheme gruvbox
    		hi CocUnusedHighlight cterm=underline gui=underline guifg=686860
    	]])
        -- Transparent background
        -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
        -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
        -- vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
        -- vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })
        -- vim.cmd([[
        --     hi SignColumn guibg=NONE cterm=NONE term=NONE
        -- ]])
    end,
}

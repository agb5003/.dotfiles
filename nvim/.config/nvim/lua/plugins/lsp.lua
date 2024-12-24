return {
    {
        -- Quickstart LSPs
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- ADD LANGUAGE SERVERS HERE --
            lspconfig.pyright.setup({
                capabilities = capabilities
            })
            lspconfig.clangd.setup({
                capabilities = capabilities
            })


            -------------------------------
        end,
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        -- Autoclose
        "echasnovski/mini.pairs",
        opts = {
            mappings = {
                -- restrict ' with < and & for rust
                ["'"] = { neigh_pattern = "[^%a\\|<|&]." },
                -- Add | for rust iterations
                ["|"] = { action = "closeopen", pair = "||", neigh_pattern = "[(][)]", register = {cr = false } },
            }
        }
    },
    {
        -- Completion
        "hrsh7th/nvim-cmp",
        lazy = false,
        priority = 100,
        dependencies = {
            "onsails/lspkind.nvim",
            "hrsh7th/cmp-nvim-lsp",
            -- Below items are not essential
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-cmdline",
            { "L3MON4D3/LuaSnip", build = "make install_jsregexp" },
            "saadparwaiz1/cmp_luasnip",
        },
    },
    {
        -- Treesitter
        "nvim-treesitter/nvim-treesitter"

    }
}

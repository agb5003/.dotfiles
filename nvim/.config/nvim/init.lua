-- Set language
require("config.lang")

-- Make vim always use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Soft wrap and wrap at words
vim.opt.wrap = true
vim.opt.linebreak = true

-- Move through wrapped lines graphically
vim.keymap.set({'n', 'v'}, 'j', 'gj')
vim.keymap.set({'n', 'v'}, 'k', 'gk')

-- Clear search highlight with escape
vim.keymap.set('n', '<Esc>', ':noh<CR><Esc>')
vim.keymap.set('n', '<C-c>', ':noh<CR><Esc>')

-- tabstop options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- lazy.nvim
require("config.lazy") -- this imports the settings in ~/.config/nvim/lua/config/lazy.lua
-- don't ask me why the argument syntax looks like that. lua is fucking cursed

-- Keep virtual text and gutter signs visible in insert mode so the editor doesn't
-- move around when going in and out normal and insert modes
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = true,
})
vim.opt.signcolumn = "yes"

-- Enable line numbers
vim.opt.number = true

-- Scrolloff (keep lines before and after cursor when scrolling)
vim.opt.scrolloff = 8

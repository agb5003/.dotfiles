vim.cmd("language en_US")
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.linebreak = true
vim.keymap.set({'n', 'v'}, 'j', 'gj')
vim.keymap.set({'n', 'v'}, 'k', 'gk')

-- Set system clipboard as yank buffer
vim.opt.clipboard = "unnamedplus"

-- lazy.nvim
require("config.lazy") -- This requires the file in .config/nvim/lua/config/lazy.lua
-- don't ask why the argument looks like that. Lua is fucking cursed

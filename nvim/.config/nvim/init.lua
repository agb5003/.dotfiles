-- Set vim language
vim.cmd("language en_US.UTF8")

-- Make vim always use system clipboard
vim.opt.clipboard = "unnamedplus"

-- tabstop options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- lazy.nvim
require("config.lazy") -- this imports the settings in ~/.config/nvim/lua/config/lazy.lua
-- don't ask me why the argument syntax looks like that. lua is fucking cursed

-- Enable line numbers
vim.opt.number = true

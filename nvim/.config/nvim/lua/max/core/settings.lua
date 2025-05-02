-- Set language
local ok, err = pcall(function()
        vim.cmd("language en_US.UTF8") -- Linux requires the encoding to be specified
end)
if not ok then
        pcall(function()
		vim.cmd("language en_US") -- macOS just wants the locale
	end)
end

-- No swap files or backups (we have tmux for that)
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- Save undo history
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Case insensitive matching with / unless \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Line numbers
vim.opt.number = true

-- Make gutter always visible (This is where icons appear when warnings or errors
-- detected by the LSP are in the code, so without this, the gutter would appear
-- and disappear depending on whether the LSP is complaining or not.
vim.opt.signcolumn = "yes"

-- Decrease update time (for faster LSP parses, etc.)
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Use completeopt
vim.opt.completeopt = "menuone,noselect"

-- Terminal colors
vim.opt.termguicolors = true

-- Always open vertical splits below, horizontal splits right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Autoupdate the file if it's edited outside of vim
vim.opt.autoread = true

-- Keep virtual text visible (This is the output of the LSP when it detects
-- something wrong or warns about something in the code)
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = true
})

-- Set tabstops
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Text wrapping
vim.opt.wrap = true
vim.opt.linebreak = true -- moves entire word to newline instead of breaking in the middle
vim.opt.showbreak = "⤷ " -- indicate linebreaks
vim.opt.breakindent = true -- indents broken line to follow its parent

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Keep lines below and above cursor when scrolling
vim.opt.scrolloff = 8

-- Use space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Make space do nothing in normal and visual modes
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', { silent = true })

-- Save file with Space, s
vim.keymap.set('n', '<Leader>s', ':w<CR>', { silent = true })

-- Move graphically between wrapped lines
vim.keymap.set({'n', 'v'}, 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true})
vim.keymap.set({'n', 'v'}, 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true})
vim.keymap.set({'n', 'v'}, '<Down>', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true})
vim.keymap.set({'n', 'v'}, '<Up>', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true})

-- Use Shift+l to move to last symbol on the line and Shift+h to the first
-- Normally, these would go to the last and first lines on screen, but I don't
-- really use them this way so I remap them. JIS keyboards have the dollar sign
-- and the caret placed in really awkward places
vim.keymap.set({'n', 'v'}, 'H', '^')
vim.keymap.set({'n', 'v'}, 'L', '$')

-- Indent lines and unindent with Tab and Shift+Tab in visual line mode
vim.keymap.set('v', '<Tab>', '>gv')
vim.keymap.set('v', '<S-Tab>', '<gv')

-- Move to end of yanked text after pasting
vim.keymap.set('v', 'y', 'y`]')
vim.keymap.set({'v', 'n'}, 'p', 'p`]')

-- Make Ctrl+c synonymous with Escape
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Clear highlight with Space, h
vim.keymap.set({'n', 'v'}, '<Space>h', ':noh<CR>', { silent = true })


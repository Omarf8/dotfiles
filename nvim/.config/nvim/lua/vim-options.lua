vim.g.mapleader = " "

vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Keymaps
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Exit insert mode' }) -- Unused, I mapped caps-lock to Esc and use it instead 

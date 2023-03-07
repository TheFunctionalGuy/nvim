vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = "Open netrw" })
vim.keymap.set('i', '<C-l>', '<C-o>A;', { desc = "Insert semicolon at end of an line" })
vim.keymap.set('i', '<C-c>', '<Esc>')

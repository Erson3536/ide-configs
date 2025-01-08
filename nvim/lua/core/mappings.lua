vim.g.mapleader = " "

vim.keymap.set('i', 'jj', '<ESC>', { silent = true }) -- silent means dont echo on the command line

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree float focus reveal<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')


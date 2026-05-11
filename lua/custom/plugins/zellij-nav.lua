-- zellij-nav
-- Integrate with zellij panes and windows.

vim.pack.add { 'https://github.com/swaits/zellij-nav.nvim' }

require('zellij-nav').setup()

vim.keymap.set('n', '<c-h>', '<cmd>ZellijNavigateLeft<cr>', { silent = true, desc = 'navigate left' })
vim.keymap.set('n', '<c-j>', '<cmd>ZellijNavigateDown<cr>', { silent = true, desc = 'navigate down' })
vim.keymap.set('n', '<c-k>', '<cmd>ZellijNavigateUp<cr>', { silent = true, desc = 'navigate up' })
vim.keymap.set('n', '<c-l>', '<cmd>ZellijNavigateRight<cr>', { silent = true, desc = 'navigate right' })

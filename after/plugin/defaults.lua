-- Customizations

local keymap_opts = { noremap = true, silent = true }

-- Custom options
vim.opt.cursorline = true
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Telescope mappings

-- Gitsigns mappings
vim.keymap.set('n', ']c', require('gitsigns').next_hunk, keymap_opts)
vim.keymap.set('n', '[c', require('gitsigns').prev_hunk, keymap_opts)
vim.keymap.set('n', '<leader>hp', require('gitsigns').preview_hunk, keymap_opts)

-- Other custom mappings
vim.keymap.set('i', 'jj', '<Esc>', keymap_opts)
vim.keymap.set('n', '<leader>E', ':Explore<CR>', keymap_opts)
vim.keymap.set('n', '<leader>F', ':Format<CR>', keymap_opts)

-- Custom comands
vim.api.nvim_command 'command BD Bdelete'
vim.api.nvim_command 'command BW Bwipeout'

-- Preserve clipboard when doing visual paste.
vim.keymap.set('v', 'p', '"_dP', keymap_opts)

-- Highlight <cword>, but don't automatically jump to the next match.
vim.keymap.set('n', '<leader>*', ":<C-u>let @/ = '\\<' . expand('<cword>') . '\\>'<CR>:set hlsearch<CR>", keymap_opts)
vim.keymap.set('n', '<leader>g*', ":<C-u>let @/ = expand('<cword>')<CR>:set hlsearch<CR>", keymap_opts)

-- Clear highlight.
vim.keymap.set('n', '<leader>n', ':nohlsearch<CR>', keymap_opts)

-- Customizations

local keymap_opts = { noremap = true, silent = true }

-- Custom options
vim.opt.cursorline = true
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Gitsigns mappings
vim.keymap.set({ 'n', 'v' }, '<leader>hr', ':Gitsigns reset_hunk<CR>', { desc = '[H]unk [R]eset' })

-- Other custom mappings
vim.keymap.set('i', 'jj', '<Esc>', keymap_opts)
vim.keymap.set('n', '<leader>E', ':Explore<CR>', { desc = '[E]xplore directory of the current file' })
vim.keymap.set('n', '<leader>F', ':Format<CR>', { desc = '[F]ormat the current file' })

-- Custom comands
vim.api.nvim_command 'command BD Bdelete'
vim.api.nvim_command 'command BW Bwipeout'

-- Preserve clipboard when doing visual paste.
vim.keymap.set('v', 'p', '"_dP', keymap_opts)

-- Highlight <cword>, but don't automatically jump to the next match.
vim.keymap.set('n', '<leader>*', ":<C-u>let @/ = '\\<' . expand('<cword>') . '\\>'<CR>:set hlsearch<CR>",
  { desc = 'Search word under cursor (strict)' })
vim.keymap.set('n', '<leader>g*', ":<C-u>let @/ = expand('<cword>')<CR>:set hlsearch<CR>",
  { desc = 'Search word under cursor (loose)' })

-- Clear highlight.
vim.keymap.set('n', '<leader>n', ':nohlsearch<CR>', { desc = 'U[n]highlight search' })

-- Quickfix navigation
vim.keymap.set('n', '[q', ':cprevious<CR>', { desc = 'Go to previous quickfix entry' })
vim.keymap.set('n', ']q', ':cnext<CR>', { desc = 'Go to next quickfix entry' })

-- Include source for diagnostics.
vim.diagnostic.config {
  float = {
    source = 'always',
    border = 'single',
  },
}

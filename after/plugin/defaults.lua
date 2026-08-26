-- Customizations

local keymap_opts = { noremap = true, silent = true }

-- Custom options
vim.opt.cursorline = true
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4
vim.opt.splitbelow = true
vim.opt.splitright = true

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
vim.keymap.set('n', '<leader>*', ":<C-u>let @/ = '\\<' . expand('<cword>') . '\\>'<CR>:set hlsearch<CR>", { desc = 'Search word under cursor (strict)' })
vim.keymap.set('n', '<leader>g*', ":<C-u>let @/ = expand('<cword>')<CR>:set hlsearch<CR>", { desc = 'Search word under cursor (loose)' })

-- Clear highlight.
vim.keymap.set('n', '<leader>n', ':nohlsearch<CR>', { desc = 'U[n]highlight search' })

-- Quickfix navigation
vim.keymap.set('n', '[q', ':cprevious<CR>', { desc = 'Go to previous quickfix entry' })
vim.keymap.set('n', ']q', ':cnext<CR>', { desc = 'Go to next quickfix entry' })

-- Disable list mode by default.
vim.opt.list = false
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣', eol = '$' }

-- Disable htmldjango.
-- We want html.jinja to be used instead.
vim.filetype.add {
  extension = {
    html = function(path, bufnr) return 'html' end,
  },
}

-- For jinja file types, disable treesitter.
-- For some reason the treesitter-based highlighting of the jinja parts doesn't work.
-- Revisit this later and see if the workaround can be removed.
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'html.jinja', 'hcl.jinja', 'yaml.jinja' },
  callback = function() vim.treesitter.stop() end,
})

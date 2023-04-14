-- vim-test

return {
  'vim-test/vim-test',
  lazy = false,
  config = function()
    local keymap_opts = { noremap = true, silent = true }
    vim.keymap.set('n', '<leader>tn', ':TestNearest<CR>', { desc = '[T]est [N]earest' })
    vim.keymap.set('n', '<leader>tf', ':TestFile<CR>', { desc = '[T]est [F]ile' })
    vim.keymap.set('n', '<leader>tl', ':TestLast<CR>', { desc = '[T]est [L]last' })
  end,
}

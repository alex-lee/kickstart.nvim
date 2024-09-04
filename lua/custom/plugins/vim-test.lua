-- vim-test

return {
  'vim-test/vim-test',
  lazy = false,
  config = function()
    vim.keymap.set('n', '<leader>tn', ':TestNearest<CR>', { desc = '[T]est [N]earest' })
    vim.keymap.set('n', '<leader>tf', ':TestFile<CR>', { desc = '[T]est [F]ile' })
    vim.keymap.set('n', '<leader>tl', ':TestLast<CR>', { desc = '[T]est [L]last' })

    vim.g['test#python#runner'] = 'pytest'
  end,
}

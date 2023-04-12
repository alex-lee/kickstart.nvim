-- vim-test

return {
  'vim-test/vim-test',
  lazy = false,
  config = function()
    local keymap_opts = { noremap = true, silent = true }
    vim.keymap.set('n', '<leader>tn', ':TestNearest<CR>', keymap_opts)
    vim.keymap.set('n', '<leader>tf', ':TestFile<CR>', keymap_opts)
  end,
}

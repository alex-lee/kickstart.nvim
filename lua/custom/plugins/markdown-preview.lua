-- markdown-preview
-- https://github.com/iamcco/markdown-preview.nvim

return {
  'iamcco/markdown-preview.nvim',
  ft = 'markdown',
  build = function()
    vim.fn['mkdp#util#install']()
  end,
}

-- Kanagawa color scheme
return {
  'rebelot/kanagawa.nvim',
  priority = 999,
  config = function()
    vim.cmd.colorscheme 'kanagawa'
  end,
}

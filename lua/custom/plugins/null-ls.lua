-- null-ls

return {
  'jose-elias-alvarez/null-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        -- Lua.
        null_ls.builtins.formatting.stylua,
        -- Go.
        null_ls.builtins.formatting.golines,
        null_ls.builtins.diagnostics.staticcheck,
        -- Python.
        -- null_ls.builtins.formatting.black,
        -- JavaScript, etc.
        null_ls.builtins.formatting.prettier.with {
          extra_filetypes = { 'svelte' },
        },
        -- Shell.
        null_ls.builtins.diagnostics.shellcheck,
        null_ls.builtins.formatting.shfmt,
        -- SQL.
        null_ls.builtins.formatting.pg_format,
      },
    }
  end,
}

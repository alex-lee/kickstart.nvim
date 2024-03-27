-- gitsigns
-- This will get merged into the base config in init.lua.
return {
  'lewis6991/gitsigns.nvim',
  opts = {
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map('n', ']c', function()
        if vim.wo.diff then
          return ']c'
        end
        vim.schedule(function()
          gs.next_hunk()
        end)
        return '<Ignore>'
      end, { expr = true })

      map('n', '[c', function()
        if vim.wo.diff then
          return '[c'
        end
        vim.schedule(function()
          gs.prev_hunk()
        end)
        return '<Ignore>'
      end, { expr = true })

      -- Actions
      map('n', '<leader>hr', gs.reset_hunk, { desc = 'git reset hunk' })
      map('n', '<leader>hp', gs.preview_hunk, { desc = 'git preview hunk' })
      map('n', '<leader>hb', function()
        gs.blame_line { full = true }
      end, { desc = 'git blame line' })
      map('n', '<leader>tb', gs.toggle_current_line_blame, { desc = 'git toggle current line blame' })
      map('n', '<leader>hd', gs.diffthis, { desc = 'git diff hunk' })
      map('n', '<leader>hD', function()
        gs.diffthis '~'
      end)
      map('n', '<leader>td', gs.toggle_deleted, { desc = 'git toggle deleted virtual text' })

      -- Text object
      map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
    end,
  },
}

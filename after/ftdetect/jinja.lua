-- Set filetype for html in standard jinja templates directories.

vim.filetype.add {
  pattern = {
    ['.*/templates/.*%.html'] = 'html.jinja',
  },
}

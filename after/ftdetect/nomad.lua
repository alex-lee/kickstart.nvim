-- Define a separate hcl filetypes.

vim.filetype.add {
  extension = {
    nomad = 'hcl.nomad',
  },
  pattern = {
    ['.*%.nomad%.hcl'] = 'hcl.nomad',
  },
}

vim.filetype.add {
  extension = {
    pkr = 'hcl.packer',
  },
  pattern = {
    ['.*%.pkr%.hcl'] = 'hcl.packer',
  },
}

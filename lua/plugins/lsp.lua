local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
	"lua_ls",
	"pylsp",
})
-- golbaly set gq to format the current buffer 
vim.keymap.set({'n', 'x'}, 'gq', function()
vim.lsp.buf.format({async = false, timeout_ms = 10000})
  end)

  -- this is to make sure the right lsp goes with the right file type
lsp.format_mapping('gq', {
  servers = {
    ['lua_ls'] = {'lua'},
    ['rust_analyzer'] = {'rust'},
    ['pylsp'] = {'py'},
  }
})

lsp.setup()

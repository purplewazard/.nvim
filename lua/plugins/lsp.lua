return{
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        build = ":MasonUpdate",
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
      },

      init = function()
      local lsp = require('lsp-zero').preset({})

	lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)
lsp.ensure_installed({
  -- Replace these with whatever servers you want to install
'lua_ls',
})
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
lsp.setup()
local lsp = require('lsp-zero').preset({
  manage_nvim_cmp = {
    set_sources = 'recommended'
  }
})
end
}


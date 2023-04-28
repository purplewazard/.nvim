return {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
	      local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
	end}
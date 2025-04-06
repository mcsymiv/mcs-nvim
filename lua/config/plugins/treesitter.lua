  return {
    {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },

    run = ":TSUpdate",

    config = function()
      require('nvim-treesitter.configs').setup {
	-- Add languages to be installed here that you want installef for treesitter
	ensure_installed = { 'query', 'go', 'lua', 'javascript', 'typescript', 'vimdoc', 'vim' },
	-- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
	auto_install = false,

	highlight = { enable = true },
	indent = { enable = true, disable = { 'python' } },

	incremental_selection = {
	  enable = true,
	  keymaps = {
	    -- init_selection = '<leader>ss',
	    node_incremental = 'v',
	    node_decremental = 'V',
	    -- scope_incremental = '<leaded>sc',
	  },
	},
      }
    end,
  }
}

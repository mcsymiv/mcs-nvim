return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
      local telescope = require("telescope")

      telescope.setup({
	defaults = {
	  layout_strategy = "vertical",

	  layout_config = {
	    width = 0.95,
	    height = 0.85,
	  }, -- layout config

	}, -- defualts

	pickers = {
	  find_files = {
	    mappings = {
	      i = {
		["<C-h>"] = "select_horizontal", -- opens found file in horizontal window(?), :sp file. works as <C-ss>
	      },
	    },
	    find_command = { "rg", "--files", "--hidden", "--no-ignore-vcs", "--glob", "!**/.git/*" },
	  },
	},

	extensions = {
	  fzf = {}
	},

      }) -- telescope setup end

      telescope.load_extension 'fzf'

    end
  }
}

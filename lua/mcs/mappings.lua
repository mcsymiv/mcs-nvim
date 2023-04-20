local nmap = vim.keymap.set

-- Remap for dealing with visual line wraps
nmap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
nmap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

nmap('n', '<leader>x', vim.cmd.Ex)

nmap('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

nmap('n', '<leader>e', vim.diagnostic.open_float)
nmap('n', '<leader>h', vim.diagnostic.hide)
nmap('n', '<c-d>', '<c-d>zz', { noremap = true })
nmap('n', '<c-u>', '<c-u>zz', { noremap = true })

local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

nmap('n', '<leader>ta', mark.add_file, {noremap = true})
nmap('n', '<leader>tt', ui.toggle_quick_menu, {noremap = true})
nmap('n', '<C-f>', function() ui.nav_file(1) end)
nmap('n', '<C-s>', function() ui.nav_file(2) end)

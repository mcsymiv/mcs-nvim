local nmap = vim.keymap.set
local opts = { noremap = true }

--[[
  Modes:
    normal_mode = 'n'
    insert_mode = 'i'
    visual_mode = 'v'
    visual_block_mode = 'x'
    term_mode = 't'
    command_mode = 'c'
--]]

-- Remap for dealing with visual line wraps
nmap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
nmap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Opens vim explorer
nmap('n', '<leader>x', vim.cmd.Ex)

-- Telescope word searc
nmap('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find()
end, opts)

-- Shows [ error | warning ] message
nmap('n', '<leader>e', vim.diagnostic.open_float)
nmap('n', '<leader>h', vim.diagnostic.hide)

-- Faster navigation through file
nmap('n', '<c-d>', '<c-d>zz', opts)
nmap('n', '<c-u>', '<c-u>zz', opts)

-- Harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

nmap('n', '<leader>ta', mark.add_file, opts)
nmap('n', '<leader>tt', ui.toggle_quick_menu, opts)
nmap('n', '<C-h>', function() ui.nav_file(2) end)
nmap('n', '<C-f>', function() ui.nav_file(1) end)

-- Move text
-- v, x mode duplicate are required
-- to work consistent between moves
nmap('n', '<A-j>', ':m .+1<CR>==', opts)
nmap('v', '<A-j>', ':m \'>+1<CR>gv=gv', opts)
nmap('x', '<A-j>', ':m \'>+1<CR>gv=gv', opts)

nmap('v', '<A-k>', ':move .-2<CR>==', opts)
nmap('n', '<A-k>', ':m \'<-2<CR>gv=gv', opts)
nmap('x', '<A-k>', ':m \'<-2<CR>gv=gv', opts)
-- A is for [A]lt or Option on mac

-- Paste remap 
-- Pastes last yanked entry
-- nmap('n', 'p', '"_dP', opts)


-- Git
nmap('n', '<leader>gg', '<cmd>Git<cr>', opts)

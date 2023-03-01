local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

-- General keymaps
vim.keymap.set('n', '<leader>a', mark.add_file, { desc = "Mark file" })
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = "Open harpoon quick menu" })

-- Shortcuts for first four files
vim.keymap.set('n', '<leader>h', function() ui.nav_file(1) end, { desc = "Open harpoon file at slot 1" })
vim.keymap.set('n', '<leader>j', function() ui.nav_file(2) end, { desc = "Open harpoon file at slot 2" })
vim.keymap.set('n', '<leader>k', function() ui.nav_file(3) end, { desc = "Open harpoon file at slot 3" })
vim.keymap.set('n', '<leader>l', function() ui.nav_file(4) end, { desc = "Open harpoon file at slot 4" })

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Open file finder" })
vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = "Open file finder (git only)" })
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Open grep pane" })

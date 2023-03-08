return {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    cmd = 'Telescope',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { '<leader>pf', function() require('telescope.builtin').find_files() end, desc = "Open file finder" },
        { '<leader>pg', function() require('telescope.builtin').git_files() end, desc = "Open file finder (git only)" },
        { '<leader>ps', function() require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") }) end, desc = "Open grep pane" },
    },
    opts = {
        defaults = {
            mappings = {
                i = {
                    ['<C-j>'] = 'move_selection_next',
                    ['<C-k>'] = 'move_selection_previous',
                },
            },
        },
    },
}

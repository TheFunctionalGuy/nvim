return {
    'tpope/vim-fugitive',
    cmd = 'Git',
    keys = {
        { '<leader>gs', '<cmd>Git<CR>', desc = "Open Fugitive" },
        { '<leader>gz', '<cmd>Git pull<CR>', desc = "Git pull" },
        { '<leader>gd', '<cmd>Git push<CR>', desc = "Git push" },
        { '<leader>gf', '<cmd>Git fetch<CR>', desc = "Git fetch" },
    },
}

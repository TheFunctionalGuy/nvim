return {
    'm4xshen/smartcolumn.nvim',
    event = { 'BufReadPost', 'BufNewFile' },
    opts = {
        colorcolumn = { '120', '160' },
        disabled_filetypes = {
            'help',
            'text',
            'markdown',
            'mason',
            'lazy',
            'netrw',
            'neo-tree',
        },
    },
    config = function(_, opts)
        require('smartcolumn').setup(opts)
    end,
}

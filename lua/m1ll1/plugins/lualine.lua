return {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = { theme = 'tokyonight' },
    },
    config = function(_, opts)
        require('lualine').setup(opts)
    end,
}

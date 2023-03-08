return {
    -- TokyoNight
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd('colorscheme tokyonight-moon')
        end,
    },
    -- Gruvbox
    -- FIXME: Currently broken
    -- {
    --     'ellisonleao/gruvbox.nvim',
    --     lazy = true,
    --     config = function()
    --         require('gruvbox').setup()

    --         vim.o.background = 'dark'
    --         vim.cmd('colorscheme gruvbox')
    --     end,
    -- },
}

return {
    {
        'echasnovski/mini.pairs',
        event = 'VeryLazy',
        config = function()
            require('mini.pairs').setup()
        end,
    },
    {
        'echasnovski/mini.surround',
        config = function()
            require('mini.surround').setup()
        end,
    },
    -- TODO: echasnovski/mini.ai
    -- TODO: echasnovski/mini.align
}

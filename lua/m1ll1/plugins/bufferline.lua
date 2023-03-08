return {
    'akinsho/bufferline.nvim',
    event = 'VeryLazy',
    keys = {
        { '<leader>bp', '<cmd>BufferLineTogglePin<CR>', desc = "Toggle pin" },
        { '<leader>bP', '<cmd>BufferLineGroupClose ungrouped<CR>', desc = "Delete non-pinned buffers" },
        { '<C-k>', '<cmd>BufferLineCyclePrev<CR>', desc = "Previous buffer" },
        { '<C-j>', '<cmd>BufferLineCycleNext<CR>', desc = "Next buffer" },
    },
    opts = {
        options = {
            diagnostics = 'nvim_lsp',
            always_show_bufferline = false,
            offsets = {
                {
                    filetype = 'neo-tree',
                    text = 'Neo-tree',
                    highlight = 'Directory',
                    text_align = 'left',
                },
            },
        },
    },
}

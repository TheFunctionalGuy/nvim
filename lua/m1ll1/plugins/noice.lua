-- FIXME: Currently broken
return {
    'folke/noice.nvim',
    cond = false,
    dependencies = {
        'MunifTanjim/nui.nvim',
        'rcarriga/nvim-notify',
    },
    event = 'VeryLazy',
    keys = {
        { '<leader>snl', function() require('noice').cmd('last') end, desc = "Noice Last Message" },
        { '<leader>snh', function() require('noice').cmd('history') end, desc = "Noice History" },
        { '<leader>sna', function() require('noice').cmd('all') end, desc = "Noice All" },
    },
    opts = {
        lsp = {
            -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
            override = {
                ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
                ['vim.lsp.util.stylize_markdown'] = true,
                ['cmp.entry.get_documentation'] = true,
            },
        },
        presets = {
            bottom_search = true,
            command_palette = true,
            long_message_to_split = true,
        },
    },
    config = function(_, opts)
        -- test
        require('noice').setup(opts)
    end,
}

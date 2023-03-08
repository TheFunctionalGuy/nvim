return {
    'nvim-neo-tree/neo-tree.nvim',
    cmd = 'Neotree',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
    },
    keys = {
        {
            '<leader>pv',
            function()
                require('neo-tree.command').execute({ toggle = true, dir = vim.loop.cwd() })
            end,
            desc = "Toggle NeoTree", 
        },
    },
    deactivate = function()
        vim.cmd([[Neotree close]])
    end,
    init = function()
        vim.g.neo_tree_remove_legacy_commands = 1
    end,
    opts = {
        window = {
            mappings = {
                ['<space>'] = 'none',
            },
        },
        default_component_configs = {
            indent = {
                with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
                expander_collapsed = '',
                expander_expanded = '',
                expander_highlight = 'NeoTreeExpander',
            },
        },
    },
}

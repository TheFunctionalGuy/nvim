return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 1500

        require('which-key').setup()
    end,
}

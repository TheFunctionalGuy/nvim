-- Command to set TokyoNight scheme
vim.api.nvim_create_user_command(
    'TokyoNight',
    function()
        vim.cmd('colorscheme tokyonight-moon')
        require('lualine').setup({
            options = {
                theme = 'tokyonight',
            },
        })
    end,
    { desc = "Activate TokyoNight scheme" }
)

-- Command to set Gruvbox scheme
-- vim.api.nvim_create_user_command(
--     'Gruvbox',
--     function()
--         vim.cmd('colorscheme gruvbox')
--         require('lualine').setup({
--             options = {
--                 theme = 'gruvbox',
--             },
--         })
--     end,
--     { desc = "Activate Gruvbox scheme" }
-- )

-- Command to append a semi-colon
vim.api.nvim_create_user_command(
    'Semicolon',
    function()
        local pos = vim.api.nvim_win_get_cursor(0)
        vim.cmd.normal({'A;', bang = true})
        vim.api.nvim_win_set_cursor(0, pos)
    end,
    { desc = "Append semi-colon" }
)

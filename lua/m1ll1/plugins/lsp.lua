return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},                  -- Required
        {'hrsh7th/cmp-nvim-lsp'},              -- Required
        {'hrsh7th/cmp-buffer'},                -- Optional
        {'hrsh7th/cmp-path'},                  -- Optional
        {'saadparwaiz1/cmp_luasnip'},          -- Optional
        {'hrsh7th/cmp-nvim-lua'},              -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},                  -- Required
        {'rafamadriz/friendly-snippets'},      -- Optional
    },
    config = function()
        local lsp = require('lsp-zero')
        local cmp = require('cmp')

        lsp.preset('recommended')
        lsp.ensure_installed({
            'clangd',
            'rust_analyzer',
        })

        -- Fix undefined global 'vim' error
        -- FIXME: This is not working
        lsp.configure('lua-language-server', {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' }
                    }
                }
            }
        })

        lsp.set_preferences({
            suggest_lsp_servers = false,
        })

        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        local cmp_mappings = lsp.defaults.cmp_mappings({
            ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
        })

        lsp.setup_nvim_cmp({
            mapping = cmp_mappings,
        })

        lsp.on_attach(function(client, bufnr)
            local opts = { buffer = bufnr, remap = false}

            vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, { buffer = bufnr, remap = false, desc = "Jump to definition" })
            vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, { buffer = bufnr, remap = false, desc = "Display hover info" })
            vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, { buffer = bufnr, remap = false, desc = "Rename buffer" })
            vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, { buffer = bufnr, remap = false, desc = "Open diagnostic float" })
            vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, { buffer = bufnr, remap = false, desc = "Jump to next code diagnostic" })
            vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, { buffer = bufnr, remap = false, desc = "Jump to previous code diagnostic" })
            vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, { buffer = bufnr, remap = false, desc = "Show code actions" })
            vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, { buffer = bufnr, remap = false, desc = "Show references" })
            vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, { buffer = bufnr, remap = false, desc = "Rename buffer" })
            vim.keymap.set('n', '<leader>vf', function() vim.lsp.buf.format() end, { buffer = bufnr, remap = false, desc = "Format file" })
            vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, { buffer = bufnr, remap = false, desc = "Show signature help" })
        end)

        lsp.setup()

        vim.diagnostic.config({
            virtual_text = true
        })
    end,
}

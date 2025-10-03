return {
    require('lspconfig').luals.setup {
        settings = {
            Lua = {
                runtime = {
                    version = 'LuaJIT',
                },
                diagnostics = {
                    globals = { 'vim' },
                },
                workspace = {
                    library = { vim.env.VIMRUNTIME },
                },
            },
        },
    },
}

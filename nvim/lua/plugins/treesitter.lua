return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local configs = require('nvim-treesitter.configs')
        configs.setup({

            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
            ensure_installed = {
                'lua',
                'python',
                'javascript',
                'typescript',
                'vimdoc',
                'vim',
                'regex',
                'terraform',
                'sql',
                'dockerfile',
                'toml',
                'json',
                'java',
                'groovy',
                'go',
                'gitignore',
                'graphql',
                'yaml',
                'make',
                'cmake',
                'markdown',
                'markdown_inline',
                'bash',
                'tsx',
                'css',
                'html',
                'c',
                'cpp',
                'cmake',
                'rust',
                'xml',
                'kdl',
            },
            auto_install = true,
        })
    end,
}

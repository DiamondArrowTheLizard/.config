return {
    'cdelledonne/vim-cmake',
    config = function()
        vim.keymap.set('n', '<leader><CR>', '<CMD>lua require("FTerm").toggle()<CR>')
        vim.keymap.set('n', '<leader>cmg', ':CMakeGenerate<CR>')
        vim.keymap.set('n', '<leader>cmb', ':CMakeBuild<CR>')
        vim.keymap.set('n', '<leader>cmc', ':CMakeClean<CR>')
    end,
}

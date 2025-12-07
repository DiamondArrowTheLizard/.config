return {
    'cdelledonne/vim-cmake',
    config = function()
        vim.g.cmake_link_compile_commands = 1
        vim.keymap.set('n', '<leader>cmg', ':CMakeGenerate<CR>')
        vim.keymap.set('n', '<leader>cmb', ':CMakeBuild<CR>')
        vim.keymap.set('n', '<leader>cmc', ':CMakeClean<CR>')
    end,
}

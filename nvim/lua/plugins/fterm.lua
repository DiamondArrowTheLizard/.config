return {
    'numToStr/FTerm.nvim',

    config = function()
        vim.keymap.set('n', '<leader><CR>', '<CMD>lua require("FTerm").toggle()<CR>')
        vim.keymap.set('t', '<leader><CR>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
    end,
}

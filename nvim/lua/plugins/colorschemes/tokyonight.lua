local function enable_transparency()
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
end

return {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        vim.cmd [[colorscheme tokyonight-night]]
        -- enable_transparency()
    end,
}

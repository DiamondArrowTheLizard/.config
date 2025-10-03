local conf = require('telescope.config').values
local themes = require 'telescope.themes'

-- helper function to use telescope on harpoon list.
-- change get_ivy to other themes if wanted
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end
    local opts = themes.get_ivy {
        promt_title = 'Working List',
    }

    require('telescope.pickers')
        .new(opts, {
            finder = require('telescope.finders').new_table {
                results = file_paths,
            },
            previewer = conf.file_previewer(opts),
            sorter = conf.generic_sorter(opts),
        })
        :find()
end

return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = function()
        local harpoon = require 'harpoon'

        vim.keymap.set('n', '<leader>ha', function()
            harpoon:list():add()
        end, { desc = '[H]arpoon: [A]dd to the current harpoon list' })

        vim.keymap.set('n', '<C-e>', function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)

        vim.keymap.set('n', '<leader><leader>', function()
            toggle_telescope(harpoon:list())
        end, { desc = '[ ] Open harpoon window' })

        vim.keymap.set('n', '<C-p>', function()
            harpoon:list():prev()
        end)

        vim.keymap.set('n', '<C-n>', function()
            harpoon:list():next()
        end)

        vim.keymap.set('n', '<leader>hh', function()
            harpoon:list():select(1)
        end, { desc = '[H]arpoon: select item 1' })

        vim.keymap.set('n', '<leader>hj', function()
            harpoon:list():select(2)
        end, { desc = '[H]arpoon: select item 2' })

        vim.keymap.set('n', '<leader>hk', function()
            harpoon:list():select(3)
        end, { desc = '[H]arpoon: select item 3' })

        vim.keymap.set('n', '<leader>hl', function()
            harpoon:list():select(4)
        end, { desc = '[H]arpoon: select item 4' })
    end,
}

-- leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)
-- recognize capital w
vim.keymap.set('c', 'W', 'w')

-- recognize capital q
vim.keymap.set('c', 'Q', 'q')

-- delete char without saving to register
vim.keymap.set('n', 'x', '"_x"', opts)

-- vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- splits (Split <Vertical Horizontal Equalize Kill>)
vim.keymap.set('n', '<leader>sv', '<C-w>v', opts, { desc = '[S]plit [V]ertical' })
vim.keymap.set('n', '<leader>sh', '<C-w>s', opts)
vim.keymap.set('n', '<leader>se', '<C-w>=', opts)
vim.keymap.set('n', '<leader>sk', ':close<CR>', opts)

-- resizing split (Split Resize <hjkl>)
vim.keymap.set('n', '<leader>srk', ':resize -2<CR>', opts)
vim.keymap.set('n', '<leader>srj', ':resize +2<CR>', opts)
vim.keymap.set('n', '<leader>srl', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<leader>srh', ':vertical resize +2<CR>', opts)
-- with arrow keys
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- moving between splits
vim.keymap.set('n', '<M-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<M-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<M-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<M-l>', ':wincmd l<CR>', opts)

-- buffers (Buffer <Next Previous Kill Open>)
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', opts)
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>bk', ':bdelete!<CR>', opts)
vim.keymap.set('n', '<leader>bo', '<cmd> enew <CR>', opts)
-- move with <Tab>
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)

-- tabs (Tab <Open Kill Next Previous>)
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts)
vim.keymap.set('n', '<leader>tk', ':tabclose<CR>', opts)
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts)
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts)

-- toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- diagnostic keymaps
vim.keymap.set('n', '<leader>dp', function()
    vim.diagnostic.jump { count = -1, float = true }
end, { desc = 'Go to [D]iagnostic [P]ext message' })

vim.keymap.set('n', '<leader>dn', function()
    vim.diagnostic.jump { count = 1, float = true }
end, { desc = 'Go to [D]iagnostic [N]ext message' })

vim.keymap.set('n', '<leader>dm', vim.diagnostic.open_float, { desc = 'Open floating [D]iagnostic [M]essage' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open [D]iagnostics [L]ist' })

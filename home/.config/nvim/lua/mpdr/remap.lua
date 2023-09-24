vim.keymap.set('n', '<leader>n', '<cmd>Neotree toggle<cr>')
vim.keymap.set('n', '<c-\\>', vim.cmd.ToggleTerm, {})

-- Navigate between tabs
vim.keymap.set('n', '<A-u>', ':tabp<CR>')
vim.keymap.set('n', '<A-i>', ':tabn<CR>')
vim.keymap.set('i', '<A-u>', '<C-\\><C-n>:tabp<CR>')
vim.keymap.set('i', '<A-i>', '<C-\\><C-n>:tabn<CR>')
vim.keymap.set('t', '<A-u>', '<C-\\><C-n>:tabp<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n>:tabn<CR>')

-- Move selection by one line and keep it indented, thanks ThePrimeagen for the
-- tip
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Keep mouse position when joining lines
vim.keymap.set('n', 'J', 'mzJ`z')

-- Keep screen centered on mouse while jumping
vim.keymap.set('n' , '<C-d>', '<C-d>zz')
vim.keymap.set('n' , '<C-u>', '<C-u>zz')

-- Keep cursor centered when searching
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Keep the buffer if we are replacing highlighted text
vim.keymap.set('x', '<leader>p', '"_dP')

-- Save shortcut
vim.keymap.set('n', '<leader>s', '<Cmd>update<CR>')

-- Git status
vim.keymap.set('n', '<leader>gs', '<Cmd>G<CR>')

-- Saner clipboard commands
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

-- Copy from cursor to end of line
vim.keymap.set('n', 'Y', 'y$')

vim.keymap.set("i", "<C-c>", "<Esc>")

-- Stop the stupid q: menu from appearing
vim.keymap.set('n', 'Q', '<Nop>')

-- Easy normal mode shortcuts
vim.keymap.set('i', 'jj', '<esc>')
vim.keymap.set('t', 'JJ', '<C-\\><C-n>')

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

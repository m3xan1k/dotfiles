local opts = { noremap = true, silent = true }

vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.keymap.set("", ",", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- fast jk to enter normal mode
vim.keymap.set('i', 'jk', '<ESC>', opts)

-- move lines and selections
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", opts)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP", opts)
vim.keymap.set("v", "p", '"_dP', opts)

--copy to system clipboard
vim.keymap.set('n', '<leader>y', '\"+y', opts)
vim.keymap.set('v', '<leader>y', '\"+y', opts)
vim.keymap.set('n', '<leader>Y', '\"+Y', opts)

--delete to system clipboard
vim.keymap.set('n', '<leader>d', '\"_d', opts)
vim.keymap.set('v', '<leader>d', '\"_d', opts)

-- supress capital Q
vim.keymap.set('n', 'Q', '<nop>', opts)

-- resize with arrows
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- toggle file tree
vim.keymap.set('n', '<leader>e', ':NERDTreeToggle<CR>', opts)

-- close buffer tab
vim.keymap.set('n', '<leader>bk', ':bdelete!<CR>', opts)

-- no highlight
vim.keymap.set('n', '<leader>nh', ':noh<CR>', opts)

-- bufferline
vim.keymap.set('n', '<C-h>', ':BufferLineCyclePrev<CR>', opts)
vim.keymap.set('n', '<C-l>', ':BufferLineCycleNext<CR>', opts)
vim.keymap.set('n', '<C-A-h>', ':BufferLineMovePrev<CR>', opts)
vim.keymap.set('n', '<C-A-l>', ':BufferLineMoveNext<CR>', opts)

-- windows
vim.keymap.set('n', '<leader>ws', ':split<CR>', opts)
vim.keymap.set('n', '<leader>wv', ':vsplit<CR>', opts)
vim.keymap.set('n', '<leader>wn', ':new<CR>', opts)
vim.keymap.set('n', '<leader>wc', ':close!<CR>', opts)
vim.keymap.set('n', '<leader>wh', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<leader>wl', ':wincmd l<CR>', opts)
vim.keymap.set('n', '<leader>wj', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<leader>wk', ':wincmd k<CR>', opts)

-- toggle between implementation and tests
vim.keymap.set('n', '<leader>gt', ':A<CR>', opts)

-- custom macros
vim.cmd("let @i = 'import IPython; IPython.embed()'")
vim.cmd("let @p = 'from pprint import pprint; pprint()'")

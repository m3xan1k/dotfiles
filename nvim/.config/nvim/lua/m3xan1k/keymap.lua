local opts = { noremap = true, silent = true }

vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.keymap.set("", ",", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- fast jk to enter normal mode
vim.keymap.set('i', 'jk', '<ESC>', opts)

-- save buffer
vim.keymap.set('n', '<leader>fs', ':w<CR>', opts)

-- quit
vim.keymap.set('n', '<leader>qq', ':q<CR>', opts)

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
vim.keymap.set('n', '<leader>wrk', ':resize -2<CR>', opts)
vim.keymap.set('n', '<leader>wrj', ':resize +2<CR>', opts)
vim.keymap.set('n', '<leader>wrh', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<leader>wrl', ':vertical resize +2<CR>', opts)

-- stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- toggle file tree
vim.keymap.set('n', '<leader>e', ':NERDTreeToggle<CR>', opts)

-- close buffer tab
vim.keymap.set('n', '<leader>bd', ':bdelete!<CR>', opts)

-- no highlight
vim.keymap.set('n', '<leader>nh', ':noh<CR>', opts)

-- windows
vim.keymap.set('n', '<leader>w-', ':split<CR>', opts)
vim.keymap.set('n', '<leader>w%', ':vsplit<CR>', opts)
vim.keymap.set('n', '<leader>wn', ':new<CR>', opts)
vim.keymap.set('n', '<leader>wd', ':close!<CR>', opts)
vim.keymap.set('n', '<leader>wh', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<leader>wl', ':wincmd l<CR>', opts)
vim.keymap.set('n', '<leader>wj', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<leader>wk', ':wincmd k<CR>', opts)

-- custom macros
vim.cmd("let @i = 'import IPython; IPython.embed()'")
vim.cmd("let @p = 'from pprint import pprint; pprint()'")

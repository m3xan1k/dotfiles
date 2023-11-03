-- [nfnl] Compiled from fnl/m3xan1k/keymap.fnl by https://github.com/Olical/nfnl, do not edit.
local opts = {noremap = true, silent = true}
vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.keymap.set("", ",", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("n", "<leader>fs", ":w<CR>", opts)
vim.keymap.set("n", "<leader><leader>", ":", opts)
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", opts)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("x", "<leader>p", "\"_dP", opts)
vim.keymap.set("v", "p", "\"_dP", opts)
vim.keymap.set("n", "<leader>y", "\"+y", opts)
vim.keymap.set("v", "<leader>y", "\"+y", opts)
vim.keymap.set("n", "<leader>Y", "\"+Y", opts)
vim.keymap.set("n", "<leader>d", "\"_d", opts)
vim.keymap.set("v", "<leader>d", "\"_d", opts)
vim.keymap.set("n", "Q", "<nop>", opts)
vim.keymap.set("n", "<leader>wrk", ":resize -2<CR>", opts)
vim.keymap.set("n", "<leader>wrj", ":resize +2<CR>", opts)
vim.keymap.set("n", "<leader>wrh", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<leader>wrl", ":vertical resize +2<CR>", opts)
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
vim.keymap.set("n", "<leader>e", ":NERDTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>bd", ":bdelete!<CR>", opts)
vim.keymap.set("n", "<leader>nh", ":noh<CR>", opts)
vim.keymap.set("n", "<leader>bp", ":BufferLineCyclePrev<CR>", opts)
vim.keymap.set("n", "<leader>bn", ":BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "<leader>bmp", ":BufferLineMovePrev<CR>", opts)
vim.keymap.set("n", "<leader>bmn", ":BufferLineMoveNext<CR>", opts)
vim.keymap.set("n", "<leader>w%", ":split<CR>", opts)
vim.keymap.set("n", "<leader>w/", ":vsplit<CR>", opts)
vim.keymap.set("n", "<leader>wn", ":new<CR>", opts)
vim.keymap.set("n", "<leader>wd", ":close!<CR>", opts)
vim.keymap.set("n", "<leader>wh", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<leader>wl", ":wincmd l<CR>", opts)
vim.keymap.set("n", "<leader>wj", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<leader>wk", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<leader>gt", ":A<CR>", opts)
vim.cmd("let @i = 'import IPython; IPython.embed()'")
vim.cmd("let @p = 'from pprint import pprint; pprint()'")
return {}

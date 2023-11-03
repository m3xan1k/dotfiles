(local opts {:noremap true :silent true})

;; leader and localleader
(vim.keymap.set "" :<Space> :<Nop> opts)
(vim.keymap.set "" "," :<Nop> opts)
(set vim.g.mapleader " ")
(set vim.g.maplocalleader ",")

;; jk to normal mode
(vim.keymap.set :i :jk :<ESC> opts)

;; save buffer
(vim.keymap.set :n :<leader>fs ":w<CR>" opts)

;; to command mode
(vim.keymap.set :n :<leader><leader> ":" opts)

;; move lines
(vim.keymap.set :n :<A-j> ":m .+1<CR>==" opts)
(vim.keymap.set :n :<A-k> ":m .-2<CR>==" opts)
(vim.keymap.set :v :<A-j> ":m '>+1<CR>gv=gv" opts)
(vim.keymap.set :v :<A-k> ":m '<-2<CR>gv=gv" opts)

;; greatest remap ever
(vim.keymap.set :x :<leader>p "\"_dP" opts)
(vim.keymap.set :v :p "\"_dP" opts)

;; use clipboard
(vim.keymap.set :n :<leader>y "\"+y" opts)
(vim.keymap.set :v :<leader>y "\"+y" opts)
(vim.keymap.set :n :<leader>Y "\"+Y" opts)
(vim.keymap.set :n :<leader>d "\"_d" opts)
(vim.keymap.set :v :<leader>d "\"_d" opts)

;; disable
(vim.keymap.set :n :Q :<nop> opts)

;; resize window
(vim.keymap.set :n :<leader>wrk ":resize -2<CR>" opts)
(vim.keymap.set :n :<leader>wrj ":resize +2<CR>" opts)
(vim.keymap.set :n :<leader>wrh ":vertical resize -2<CR>" opts)
(vim.keymap.set :n :<leader>wrl ":vertical resize +2<CR>" opts)

;; stay in indent mode
(vim.keymap.set :v "<" :<gv opts)
(vim.keymap.set :v ">" :>gv opts)

;; nerdtree
(vim.keymap.set :n :<leader>e ":NERDTreeToggle<CR>" opts)

;; close buffer
(vim.keymap.set :n :<leader>bd ":bdelete!<CR>" opts)

;; no highlight
(vim.keymap.set :n :<leader>nh ":noh<CR>" opts)

;; navigate and move tabs in bufferline
(vim.keymap.set :n :<leader>bp ":BufferLineCyclePrev<CR>" opts)
(vim.keymap.set :n :<leader>bn ":BufferLineCycleNext<CR>" opts)
(vim.keymap.set :n :<leader>bmp ":BufferLineMovePrev<CR>" opts)
(vim.keymap.set :n :<leader>bmn ":BufferLineMoveNext<CR>" opts)

;; window management
(vim.keymap.set :n :<leader>w% ":split<CR>" opts)
(vim.keymap.set :n :<leader>w/ ":vsplit<CR>" opts)
(vim.keymap.set :n :<leader>wn ":new<CR>" opts)
(vim.keymap.set :n :<leader>wd ":close!<CR>" opts)
(vim.keymap.set :n :<leader>wh ":wincmd h<CR>" opts)
(vim.keymap.set :n :<leader>wl ":wincmd l<CR>" opts)
(vim.keymap.set :n :<leader>wj ":wincmd j<CR>" opts)
(vim.keymap.set :n :<leader>wk ":wincmd k<CR>" opts)

;; jump between tests and implementation
(vim.keymap.set :n :<leader>gt ":A<CR>" opts)

;; custom macro
(vim.cmd "let @i = 'import IPython; IPython.embed()'")
(vim.cmd "let @p = 'from pprint import pprint; pprint()'")

{}

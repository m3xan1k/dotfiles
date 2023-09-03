(local options {:autoread true             ; re-read buffer on file change
                :backup false              ; creates backup file
                :breakindent true          ; Wrap indent to match  line start
                :clipboard :unnamedplus    ; allow system clipboard
                :cmdheight 1               ; command minibuffer min height
                :colorcolumn :80           ; visualize long lines
                :cursorline true           ; highlight current line
                :expandtab true            ; convert tabs to spaces
                :fileencoding :utf-8       ; default encoding
                :fillchars "eob: ,fold: ,foldopen:,foldsep: ,foldclose:"  ; folding
                :foldcolumn (or (and (= (vim.fn.has :nvim-0.9) 1) :1) nil)  ; folding
                :foldenable true           ; folding
                :foldlevel 99              ; folding
                :foldlevelstart 99         ; folding
                :guifont "Ricty Diminished:h20:#e-subpixelantialias:#h-none"  ; gui
                :hlsearch true             ; highlight search matches
                :ignorecase true           ; case insesitive search by default
                :incsearch true            ; incremented search
                :number true               ; line numbers
                :numberwidth 4             ; gutter width
                :preserveindent true       ; Preserve indent structure as much as possible
                :relativenumber true       ; show relative line numbers
                :scrolloff 2               ; lines rest to start scroll
                :shiftwidth 4              ; number of spaces for each indentation
                :showmode false            ; don't show thing like --INSERT in command line
                :showtabline 2             ; always show tabs
                :signcolumn :yes           ; otherwise it will move text
                :smartindent true          ; "smart" indentation
                :softtabstop 4             ; backspace will delete right number of spaces
                :splitbelow true           ; horizontal split always below current buffer
                :splitright true           ; vertical split on the right from current buffer
                :swapfile false            ; creates swap file
                :tabstop 4                 ; how many spaces for tab
                :termguicolors true        ; same colors in terminal and in gui
                :timeoutlen 500            ; wait for keysequence
                :undofile true             ; undo persistent history
                :updatetime 50             ; faster completion invoke
                :writebackup false})       ; don't create backup copy

;; set options
(each [k v (pairs options)] (tset vim.opt k v))

;; undo dir
(set vim.opt.undodir (.. (os.getenv :HOME) :/.vim/undodir))

;; theme
(vim.cmd "set background=light")
(local colorscheme :simple)
(local (status-ok _) (pcall vim.cmd (.. "colorscheme " colorscheme)))
(when (not status-ok)
  (vim.notify (.. "colorscheme " colorscheme " not found!"))
  (lua "return "))


(vim.cmd "set whichwrap+=<,>,h,l")
(vim.cmd "set iskeyword+=-")

;; for json folding
(vim.api.nvim_create_autocmd :FileType
                             {:callback (fn [] (set vim.opt_local.shiftwidth 2)
                                          (set vim.opt_local.tabstop 2))
                              :pattern :json})

;; vimwiki
(vim.cmd "let g:vimwiki_list = [{'path': '~/Yandex.Disk/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]")

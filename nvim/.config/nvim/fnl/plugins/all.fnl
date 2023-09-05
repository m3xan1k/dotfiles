[;; common dependency
 {1 :nvim-lua/plenary.nvim
  :lazy true}

 ;; search
 {1 :nvim-telescope/telescope.nvim :lazy true}

 ;; my colorscheme
 "https://codeberg.org/m3xan1k/simple"

 ;; tabs
 {1 :akinsho/bufferline.nvim
  :config (fn []
            ((. (require :bufferline) :setup)))
  :dependencies {1 :nvim-tree/nvim-web-devicons :lazy true}
  :version "*"
  :event "BufReadPre"}

 ;; breadcrumbs
 {1 :utilyre/barbecue.nvim
  :config (fn []
            ((. (require :barbecue) :setup)))
  :dependencies [{1 :SmiteshP/nvim-navic :lazy true}
                 {1 :nvim-tree/nvim-web-devicons :lazy true}]
  :version "*"
  :after :VonHeikemen/lsp-zero.nvim
  :event "BufReadPre"}

 ;; statusline
 {1 :nvim-lualine/lualine.nvim
  :dependencies {1 :nvim-tree/nvim-web-devicons :lazy true}}

 ;; git-gutter
 {1 :lewis6991/gitsigns.nvim
  :config (fn []
            ((. (require :gitsigns) :setup)))
  :event "BufReadPre"}

 ;; search highlight helper
 {1 :kevinhwang91/nvim-hlslens
  :config (fn []
            ((. (require :hlslens) :setup)))
  :event "BufReadPre"}

 ;; "smooth" scroll
 {1 :karb94/neoscroll.nvim
  :config (fn []
            ((. (require :neoscroll) :setup)))
  :event "BufReadPre"}

 ;; lsp helper with dependencies
 {1 :VonHeikemen/lsp-zero.nvim
  :branch :v2.x
  :dependencies [[:neovim/nvim-lspconfig]
                 {1 :williamboman/mason.nvim
                  :build (fn [] (pcall vim.cmd :MasonUpdate))}
                 [:williamboman/mason-lspconfig.nvim]
                 [:hrsh7th/nvim-cmp]
                 [:hrsh7th/cmp-nvim-lsp]
                 [:L3MON4D3/LuaSnip]]}

 ;; completion helpers
 {1 :hrsh7th/cmp-path
  :event "BufReadPre"}
 {1 :hrsh7th/cmp-buffer
  :event "BufReadPre"}

 ;; for linters
 {1 :jose-elias-alvarez/null-ls.nvim
  :event "BufReadPre"}

 ;; common tools
 :tpope/vim-surround
 {1 :windwp/nvim-autopairs
  :config (fn []
            ((. (require :nvim-autopairs) :setup) {}))
  :event "BufReadPre"}
 {1 :terrortylor/nvim-comment
  :config (fn []
            ((. (require :nvim_comment) :setup) {}))
  :event "BufReadPre"}
 {1 :folke/which-key.nvim
  :config (fn []
            (set vim.o.timeout true)
            ((. (require :which-key) :setup) {}))}

 ;; save sessions
 :rmagatti/auto-session

 ;; highlight lsp matches
 {1 :RRethy/vim-illuminate
  :event "BufReadPre"}

 {1 :nvim-treesitter/nvim-treesitter
  :config (fn []
            ((. (require :nvim-treesitter) :setup) {:ensure_installed [:http
                                                                       :json]}))
  :event "BufReadPre"}

 ;; this is for parsing/folding json
 {1 :kevinhwang91/nvim-ufo
  :dependencies [:kevinhwang91/promise-async
                 {1 :luukvbaal/statuscol.nvim
                  :config (fn []
                            (local builtin (require :statuscol.builtin))
                            ((. (require :statuscol) :setup) {:relculright true
                                                              :segments [{:click "v:lua.ScFa"
                                                                          :text [builtin.foldfunc]}
                                                                         {:click "v:lua.ScSa"
                                                                          :text ["%s"]}
                                                                         {:click "v:lua.ScLa"
                                                                          :text [builtin.lnumfunc
                                                                                 " "]}]}))}]}
 ;; file tree
 :preservim/nerdtree

 ;; trailing whitespaces
 {1 :ntpeters/vim-better-whitespace :event "BufReadPre"}

 ;; my wiki
 {1 :vimwiki/vimwiki
  :ft "markdown"}

 ;; missing icons
 {1 :ryanoasis/vim-devicons :lazy true}

 ;; clojure
 :Olical/conjure
 :tpope/vim-dispatch
 :clojure-vim/vim-jack-in
 :radenling/vim-dispatch-neovim

 {1 :gpanders/nvim-parinfer
  :ft ["fennel"
       "clojure"
       "commonlisp"
       "racket"
       "clojurescript"]}]

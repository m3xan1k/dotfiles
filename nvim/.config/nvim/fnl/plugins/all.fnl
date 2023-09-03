[;; common dependency
 :nvim-lua/plenary.nvim

 ;; search
 :nvim-telescope/telescope.nvim

 ;; my colorscheme
 "https://codeberg.org/m3xan1k/simple"

 ;; tabs
 {1 :akinsho/bufferline.nvim
  :config (fn []
            ((. (require :bufferline) :setup)))
  :dependencies :nvim-tree/nvim-web-devicons
  :version "*"}

 ;; breadcrumbs
 {1 :utilyre/barbecue.nvim
  :config (fn []
            ((. (require :barbecue) :setup)))
  :dependencies [:SmiteshP/nvim-navic :nvim-tree/nvim-web-devicons]
  :version "*"}

 ;; statusline
 {1 :nvim-lualine/lualine.nvim
  :dependencies {1 :nvim-tree/nvim-web-devicons :lazy true}}

 ;; git-gutter
 {1 :lewis6991/gitsigns.nvim
  :config (fn []
            ((. (require :gitsigns) :setup)))}

 ;; search highlight helper
 {1 :kevinhwang91/nvim-hlslens
  :config (fn []
            ((. (require :hlslens) :setup)))}

 ;; "smooth" scroll
 {1 :karb94/neoscroll.nvim
  :config (fn []
            ((. (require :neoscroll) :setup)))}

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
 :hrsh7th/cmp-path
 :hrsh7th/cmp-buffer

 ;; for linters
 :jose-elias-alvarez/null-ls.nvim

 ;; common tools
 :tpope/vim-surround
 {1 :windwp/nvim-autopairs
  :config (fn []
            ((. (require :nvim-autopairs) :setup) {}))}
 {1 :terrortylor/nvim-comment
  :config (fn []
            ((. (require :nvim_comment) :setup) {}))}
 {1 :folke/which-key.nvim
  :config (fn []
            (set vim.o.timeout true)
            ((. (require :which-key) :setup) {}))}

 ;; rarely used
 :mbbill/undotree

 ;; save sessions
 :rmagatti/auto-session

 ;; highlight lsp matches
 :RRethy/vim-illuminate

 {1 :nvim-treesitter/nvim-treesitter
  :config (fn []
            ((. (require :nvim-treesitter) :setup) {:ensure_installed [:http
                                                                       :json]}))}
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
 :ntpeters/vim-better-whitespace

 ;; my wiki
 :vimwiki/vimwiki

 ;; missing icons
 :ryanoasis/vim-devicons

 ;; clojure
 :Olical/conjure
 :tpope/vim-dispatch
 :clojure-vim/vim-jack-in
 :radenling/vim-dispatch-neovim
 :gpanders/nvim-parinfer

 ;; testing this thing
 :tpope/vim-projectionist]

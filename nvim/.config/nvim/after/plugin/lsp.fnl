(local lsp ((. (require "lsp-zero") :preset)
            {:name :minimal
             :set_lsp_keymaps true
             :manage_nvim_cmp true
             :suggest_lsp_servers false
             :configure_diagnostics false}))


(lsp.on_attach (fn [client bufnr]
                 (lsp.default_keymaps {:buffer bufnr
                                       :preserve_mappings false})))

(fn sign [opts]
  (vim.fn.sign_define opts.name {:numhl "" :text opts.text :texthl opts.name}))

(sign {:name :DiagnosticSignError :text "✘"})
(sign {:name :DiagnosticSignWarn :text "▲"})
(sign {:name :DiagnosticSignHint :text "⚑"})
(sign {:name :DiagnosticSignInfo :text ""})

(vim.diagnostic.config {:float {:border :rounded :source :always}
                        :severity_sort true
                        :virtual_text false})

(local lspconfig (require :lspconfig))
(lspconfig.lua_ls.setup (lsp.nvim_lua_ls))
(lspconfig.clangd.setup {})

(lspconfig.pyright.setup {:settings {:python {:analysis {:autoSearchPaths true
                                                         :diagnosticMode :openFilesOnly
                                                         :typeCheckingMode :basic
                                                         :useLibraryCodeForTypes true}}}})

(tset (require :lspconfig.configs) :fennel_language_server
      {:default_config {:cmd [:/home/m3xan1k/.cargo/bin/fennel-language-server]
                        :filetypes [:fennel]
                        :root_dir (lspconfig.util.root_pattern :fnl)
                        :settings {:fennel {:diagnostics {:globals [:vim]}
                                            :workspace {:library (vim.api.nvim_list_runtime_paths)}}}
                        :single_file_support true}})

(lspconfig.fennel_language_server.setup {})
(lspconfig.racket_langserver.setup {})

(lsp.setup)

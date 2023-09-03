(local config (require "nvim-treesitter.configs"))

(config.setup {:ensure_installed [:lua
                                  :python
                                  :fennel
                                  :clojure]
               :sync_install false
               :auto_install true
               :highlight {:enable false}
               :indent {:enable true
                        :disable [:yaml]}})

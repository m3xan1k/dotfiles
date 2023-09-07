;;use indent until file is opened
;;use treesitter if possible
(local opts {:provider_selector (fn [_ filetype buftype]
                                  (or (and (or (= filetype "")
                                               (= buftype :nofile))
                                           :indent)
                                      [:treesitter :indent]))})

((. (require :ufo) :setup) opts)

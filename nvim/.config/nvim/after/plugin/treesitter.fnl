((. (require :nvim-treesitter.configs) :setup)
 {:auto_install false
  :ensure_installed [:json]
  :highlight {:enable false}
  :indent {:enable true
           :disable [:yaml]}
  :sync_install false})

((. (require :gitsigns) :setup)
 {:current_line_blame true
  :on_attach (fn [bufnr]
               (local gs package.loaded.gitsigns)

               (fn map [mode l r opts]
                 (set-forcibly! opts
                                (or opts {}))
                 (set opts.buffer bufnr)
                 (vim.keymap.set mode l r opts))

               ;; navigation by hunks
               (map :n "]c"
                    (fn []
                      (when vim.wo.diff
                        (lua "return \"]c\""))
                      (vim.schedule (fn []
                                      (gs.next_hunk)))
                      :<Ignore>)
                    {:expr true})

               (map :n "[c"
                    (fn []
                      (when vim.wo.diff
                        (lua "return \"[c\""))
                      (vim.schedule (fn []
                                      (gs.prev_hunk)))
                      :<Ignore>)
                    {:expr true})

               ;; actions
               (map :n :<leader>hr gs.reset_hunk)
               (map :v :<leader>hr
                    (fn []
                      (gs.reset_hunk [(vim.fn.line ".")
                                      (vim.fn.line :v)])))
               (map :n :<leader>hp
                    gs.preview_hunk)
               (map :n :<leader>hb
                    (fn []
                      (gs.blame_line {:full true})))
               (map :n :<leader>tb
                    gs.toggle_current_line_blame)
               (map :n :<leader>hd gs.diffthis)
               (map :n :<leader>hD
                    (fn [] (gs.diffthis "~"))))})

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
               (map :n "<leader>ghn"
                    (fn []
                      (when vim.wo.diff
                        (lua "return \"]c\""))
                      (vim.schedule (fn []
                                      (gs.next_hunk)))
                      :<Ignore>)
                    {:expr true})

               (map :n "<leader>ghp"
                    (fn []
                      (when vim.wo.diff
                        (lua "return \"[c\""))
                      (vim.schedule (fn []
                                      (gs.prev_hunk)))
                      :<Ignore>)
                    {:expr true})

               ;; actions
               (map :n :<leader>ghr gs.reset_hunk)
               (map :v :<leader>ghr
                    (fn []
                      (gs.reset_hunk [(vim.fn.line ".")
                                      (vim.fn.line :v)])))
               (map :n :<leader>ghs
                    gs.preview_hunk)
               (map :n :<leader>ghB
                    (fn []
                      (gs.blame_line {:full true})))
               (map :n :<leader>gtB
                    gs.toggle_current_line_blame)
               (map :n :<leader>ghd gs.diffthis)
               (map :n :<leader>ghD
                    (fn [] (gs.diffthis "~"))))})

(local builtin (require :telescope.builtin))
(vim.keymap.set :n :<leader>ff builtin.find_files {})
(vim.keymap.set :n :<leader>fw builtin.live_grep {})
(vim.keymap.set :n :<leader>fk builtin.keymaps {})
(vim.keymap.set :n :<leader>fc builtin.grep_string {})
(vim.keymap.set :n :<leader>fb builtin.buffers {})
(vim.keymap.set :n :<leader>fr builtin.resume {})
(local telescope (require :telescope))
(telescope.setup {:defaults {:layout_config {:vertical {:height 0.99
                                                        :preview_cutoff 10
                                                        :width 0.99}}
                             :layout_strategy :vertical
                             :preview {:treesitter false}
                             :vimgrep_arguments [:rg
                                                 :--color=never
                                                 :--no-heading
                                                 :--with-filename
                                                 :--line-number
                                                 :--column
                                                 :--smart-case]}})

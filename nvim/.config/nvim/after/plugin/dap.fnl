(local dap (require :dap))
((. dap :set_log_level) :INFO)

(set dap.configurations {:go [{:name :Debug
                               :program "${file}"
                               :request :launch
                               :type :go}]})

(set dap.adapters.go {:type :server
                      :port "${port}"
                      :executable {:command (.. (vim.fn.stdpath :data) :/mason/bin/dlv)
                                   :args [:dap :-l "127.0.0.1:${port}"]}})



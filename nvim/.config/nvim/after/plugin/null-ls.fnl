(local (status-ok? null-ls) (pcall (require "null-ls")))

(when (not status-ok?) (lua "return"))

(local diagnostics (null-ls.builtins.diagnostics))

(null-ls.setup {:debug false
                :sources [diagnostics.flake8
                          null-ls.builtins.formatting.gofmt]})

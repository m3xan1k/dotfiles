(local null-ls (require "null-ls"))

(local diagnostics (. null-ls.builtins :diagnostics))

(null-ls.setup {:debug false
                :sources [(. diagnostics :flake8)
                          null-ls.builtins.formatting.gofmt]})

-- [nfnl] Compiled from after/plugin/null-ls.fnl by https://github.com/Olical/nfnl, do not edit.
local null_ls = require("null-ls")
local diagnostics = null_ls.builtins.diagnostics
return null_ls.setup({sources = {diagnostics.flake8, null_ls.builtins.formatting.gofmt}, debug = false})

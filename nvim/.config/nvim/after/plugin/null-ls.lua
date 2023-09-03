-- [nfnl] Compiled from after/plugin/null-ls.fnl by https://github.com/Olical/nfnl, do not edit.
local status_ok_3f, null_ls = pcall(require("null-ls"))
if not status_ok_3f then
  return
else
end
local diagnostics = null_ls.builtins.diagnostics()
return null_ls.setup({sources = {diagnostics.flake8, null_ls.builtins.formatting.gofmt}, debug = false})

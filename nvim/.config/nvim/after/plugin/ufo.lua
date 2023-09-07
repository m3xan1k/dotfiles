-- [nfnl] Compiled from after/plugin/ufo.fnl by https://github.com/Olical/nfnl, do not edit.
local opts
local function _1_(_, filetype, buftype)
  return ((((filetype == "") or (buftype == "nofile")) and "indent") or {"treesitter", "indent"})
end
opts = {provider_selector = _1_}
return (require("ufo")).setup(opts)

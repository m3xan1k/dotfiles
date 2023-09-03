-- [nfnl] Compiled from after/plugin/treesitter.fnl by https://github.com/Olical/nfnl, do not edit.
local config = require("nvim-treesitter.configs")
return config.setup({ensure_installed = {"lua", "python", "fennel", "clojure"}, auto_install = true, highlight = {enable = false}, indent = {enable = true, disable = {"yaml"}}, sync_install = false})

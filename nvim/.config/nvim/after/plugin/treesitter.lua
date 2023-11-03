-- [nfnl] Compiled from after/plugin/treesitter.fnl by https://github.com/Olical/nfnl, do not edit.
return (require("nvim-treesitter.configs")).setup({ensure_installed = {"json"}, highlight = {enable = false}, indent = {enable = true, disable = {"yaml"}}, sync_install = false, auto_install = false})

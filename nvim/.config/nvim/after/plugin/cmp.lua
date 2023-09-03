-- [nfnl] Compiled from after/plugin/cmp.fnl by https://github.com/Olical/nfnl, do not edit.
local cmp = require("cmp")
return cmp.setup({window = {completion = cmp.config.window.bordered(), documentation = cmp.config.window.bordered()}, mapping = cmp.mapping.preset.insert({["<CR>"] = cmp.mapping.confirm({select = true})})})

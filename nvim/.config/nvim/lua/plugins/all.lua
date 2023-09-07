-- [nfnl] Compiled from fnl/plugins/all.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  return (require("bufferline")).setup()
end
local function _2_()
  return (require("barbecue")).setup()
end
local function _3_()
  return (require("gitsigns")).setup()
end
local function _4_()
  return (require("hlslens")).setup()
end
local function _5_()
  return (require("neoscroll")).setup()
end
local function _6_()
  return pcall(vim.cmd, "MasonUpdate")
end
local function _7_()
  return (require("nvim-autopairs")).setup({})
end
local function _8_()
  return (require("nvim_comment")).setup({})
end
local function _9_()
  vim.o.timeout = true
  return (require("which-key")).setup({})
end
local function _10_()
  return (require("nvim-treesitter")).setup({ensure_installed = {"http", "json"}})
end
local function _11_()
  local builtin = require("statuscol.builtin")
  return (require("statuscol")).setup({relculright = true, segments = {{click = "v:lua.ScFa", text = {builtin.foldfunc}}, {click = "v:lua.ScSa", text = {"%s"}}, {click = "v:lua.ScLa", text = {builtin.lnumfunc, " "}}}})
end
local function _12_()
  return ((require("cmp")).setup).buffer({sources = {{name = "vim-dadbod-completion"}}})
end
return {"nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim", "https://codeberg.org/m3xan1k/simple", "ntk148v/komau.vim", {"akinsho/bufferline.nvim", config = _1_, dependencies = {"nvim-tree/nvim-web-devicons", lazy = true}, version = "*", event = "BufReadPre"}, {"utilyre/barbecue.nvim", config = _2_, dependencies = {{"SmiteshP/nvim-navic", lazy = true}, {"nvim-tree/nvim-web-devicons", lazy = true}}, version = "*", after = "VonHeikemen/lsp-zero.nvim", event = "BufReadPre"}, {"nvim-lualine/lualine.nvim", dependencies = {"nvim-tree/nvim-web-devicons", lazy = true}}, {"lewis6991/gitsigns.nvim", config = _3_, event = "BufReadPre"}, {"kevinhwang91/nvim-hlslens", config = _4_, event = "BufReadPre"}, {"karb94/neoscroll.nvim", config = _5_, event = "BufReadPre"}, {"VonHeikemen/lsp-zero.nvim", branch = "v2.x", dependencies = {{"neovim/nvim-lspconfig", lazy = true}, {"williamboman/mason.nvim", build = _6_, lazy = true}, {"williamboman/mason-lspconfig.nvim", lazy = true}, {"hrsh7th/nvim-cmp", event = "InsertEnter"}, {"hrsh7th/cmp-nvim-lsp", event = "InsertEnter"}, {"hrsh7th/cmp-path", event = "InsertEnter"}, {"hrsh7th/cmp-buffer", event = "InsertEnter"}, {"L3MON4D3/LuaSnip", event = "InsertEnter"}}}, "jose-elias-alvarez/null-ls.nvim", {"tpope/vim-surround", event = "BufReadPre"}, {"windwp/nvim-autopairs", config = _7_, event = "BufReadPre"}, {"terrortylor/nvim-comment", config = _8_, event = "BufReadPre"}, {"folke/which-key.nvim", config = _9_}, "rmagatti/auto-session", {"RRethy/vim-illuminate", event = "BufReadPre"}, {"nvim-treesitter/nvim-treesitter", config = _10_, event = "BufReadPre"}, {"kevinhwang91/nvim-ufo", dependencies = {"kevinhwang91/promise-async", {"luukvbaal/statuscol.nvim", config = _11_}}}, "preservim/nerdtree", {"ntpeters/vim-better-whitespace", event = "BufReadPre"}, "vimwiki/vimwiki", {"ryanoasis/vim-devicons", lazy = true}, "Olical/conjure", "tpope/vim-dispatch", "clojure-vim/vim-jack-in", "radenling/vim-dispatch-neovim", {"gpanders/nvim-parinfer", ft = {"fennel", "clojure", "commonlisp", "racket", "clojurescript"}}, {"kristijanhusak/vim-dadbod-ui", dependencies = {{"tpope/vim-dadbod", lazy = true}, {"kristijanhusak/vim-dadbod-completion", init = _12_, lazy = true}, "tpope/vim-surround", "windwp/nvim-autopairs"}, cmd = "DBUI"}}

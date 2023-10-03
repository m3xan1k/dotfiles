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
local function _13_()
  do end (require("orgmode")).setup_ts_grammar()
  do end (require("nvim-treesitter.configs")).setup({ensure_installed = {"org"}, highlight = {additional_vim_regex_highlighting = {"org"}, enable = true}})
  return (require("orgmode")).setup({org_agenda_files = "~/orgfiles/**/*", org_default_notes_file = "~/orgfiles/refile.org", org_startup_folded = "inherit"})
end
return {"nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim", "https://codeberg.org/m3xan1k/simple", "ntk148v/komau.vim", {"akinsho/bufferline.nvim", config = _1_, dependencies = {"nvim-tree/nvim-web-devicons", lazy = true}, version = "*"}, {"utilyre/barbecue.nvim", config = _2_, dependencies = {{"SmiteshP/nvim-navic", lazy = true}, {"nvim-tree/nvim-web-devicons", lazy = true}}, version = "*"}, {"nvim-lualine/lualine.nvim", dependencies = {"nvim-tree/nvim-web-devicons"}}, {"lewis6991/gitsigns.nvim", config = _3_}, {"kevinhwang91/nvim-hlslens", config = _4_}, {"karb94/neoscroll.nvim", config = _5_}, {"VonHeikemen/lsp-zero.nvim", branch = "v2.x", dependencies = {"neovim/nvim-lspconfig", {"williamboman/mason.nvim", build = _6_}, "williamboman/mason-lspconfig.nvim", "hrsh7th/nvim-cmp", "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-path", "hrsh7th/cmp-buffer", "L3MON4D3/LuaSnip"}}, "jose-elias-alvarez/null-ls.nvim", "tpope/vim-surround", {"windwp/nvim-autopairs", config = _7_}, {"terrortylor/nvim-comment", config = _8_}, {"folke/which-key.nvim", config = _9_}, "rmagatti/auto-session", "RRethy/vim-illuminate", {"nvim-treesitter/nvim-treesitter", config = _10_}, {"kevinhwang91/nvim-ufo", lazy = true, ft = {"json"}, dependencies = {{"kevinhwang91/promise-async", lazy = true}, {"luukvbaal/statuscol.nvim", lazy = true, config = _11_}}}, "preservim/nerdtree", "ntpeters/vim-better-whitespace", "vimwiki/vimwiki", "ryanoasis/vim-devicons", "Olical/conjure", "tpope/vim-dispatch", "clojure-vim/vim-jack-in", "radenling/vim-dispatch-neovim", {"gpanders/nvim-parinfer", ft = {"fennel", "clojure", "commonlisp", "racket", "clojurescript"}}, {"kristijanhusak/vim-dadbod-ui", dependencies = {{"tpope/vim-dadbod"}, {"kristijanhusak/vim-dadbod-completion", config = _12_}, "tpope/vim-surround", "windwp/nvim-autopairs"}, cmd = "DBUI"}, {"rcarriga/nvim-dap-ui", dependencies = {{"mfussenegger/nvim-dap"}}}, {"nvim-orgmode/orgmode", dependencies = {{"nvim-treesitter/nvim-treesitter", lazy = true}}, event = "VeryLazy", config = _13_}}

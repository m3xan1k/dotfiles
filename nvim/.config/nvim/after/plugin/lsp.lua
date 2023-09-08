-- [nfnl] Compiled from after/plugin/lsp.fnl by https://github.com/Olical/nfnl, do not edit.
local lsp = (require("lsp-zero")).preset({name = "minimal", set_lsp_keymaps = true, manage_nvim_cmp = true, configure_diagnostics = false, suggest_lsp_servers = false})
local function _1_(client, bufnr)
  return lsp.default_keymaps({buffer = bufnr, preserve_mappings = false})
end
lsp.on_attach(_1_)
local function sign(opts)
  return vim.fn.sign_define(opts.name, {numhl = "", text = opts.text, texthl = opts.name})
end
sign({name = "DiagnosticSignError", text = "\226\156\152"})
sign({name = "DiagnosticSignWarn", text = "\226\150\178"})
sign({name = "DiagnosticSignHint", text = "\226\154\145"})
sign({name = "DiagnosticSignInfo", text = "\239\132\169"})
vim.diagnostic.config({float = {border = "rounded", source = "always"}, severity_sort = true, virtual_text = false})
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
lspconfig.clangd.setup({})
lspconfig.pyright.setup({settings = {python = {analysis = {autoSearchPaths = true, diagnosticMode = "openFilesOnly", typeCheckingMode = "basic", useLibraryCodeForTypes = true}}}})
do end (require("lspconfig.configs"))["fennel_language_server"] = {default_config = {cmd = {"/home/m3xan1k/.cargo/bin/fennel-language-server"}, filetypes = {"fennel"}, root_dir = lspconfig.util.root_pattern("fnl"), settings = {fennel = {diagnostics = {globals = {"vim"}}, workspace = {library = vim.api.nvim_list_runtime_paths()}}}, single_file_support = true}}
lspconfig.fennel_language_server.setup({})
return lsp.setup()

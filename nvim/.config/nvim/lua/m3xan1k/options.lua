-- [nfnl] Compiled from fnl/m3xan1k/options.fnl by https://github.com/Olical/nfnl, do not edit.
local options = {autoread = true, breakindent = true, clipboard = "unnamedplus", cmdheight = 1, colorcolumn = "80", cursorline = true, expandtab = true, fileencoding = "utf-8", fillchars = "eob: ,fold: ,foldopen:\239\145\188,foldsep: ,foldclose:\239\145\160", foldcolumn = (((vim.fn.has("nvim-0.9") == 1) and "1") or nil), foldenable = true, foldlevel = 99, foldlevelstart = 99, guifont = "Ricty Diminished:h20:#e-subpixelantialias:#h-none", hlsearch = true, ignorecase = true, incsearch = true, number = true, numberwidth = 4, preserveindent = true, relativenumber = true, scrolloff = 2, shiftwidth = 4, showtabline = 2, signcolumn = "yes", smartindent = true, softtabstop = 4, splitbelow = true, splitright = true, tabstop = 4, termguicolors = true, timeoutlen = 500, undofile = true, updatetime = 50, swapfile = false, showmode = false, backup = false, writebackup = false}
for k, v in pairs(options) do
  vim.opt[k] = v
end
vim.opt.undodir = (os.getenv("HOME") .. "/.vim/undodir")
vim.cmd("set background=light")
local colorscheme = "simple"
local status_ok, _ = pcall(vim.cmd, ("colorscheme " .. colorscheme))
if not status_ok then
  vim.notify(("colorscheme " .. colorscheme .. " not found!"))
  return 
else
end
vim.cmd("set whichwrap+=<,>,h,l")
vim.cmd("set iskeyword+=-")
local function _2_()
  vim.opt_local.shiftwidth = 2
  vim.opt_local.tabstop = 2
  return nil
end
vim.api.nvim_create_autocmd("FileType", {callback = _2_, pattern = "json"})
return vim.cmd("let g:vimwiki_list = [{'path': '~/Yandex.Disk/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]")

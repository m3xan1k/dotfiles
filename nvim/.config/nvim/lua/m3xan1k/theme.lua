-- [nfnl] Compiled from fnl/m3xan1k/theme.fnl by https://github.com/Olical/nfnl, do not edit.
vim.cmd("set background=light")
local colorscheme = "komau"
local status_ok, _ = pcall(vim.cmd, ("colorscheme " .. colorscheme))
if not status_ok then
  return vim.notify(("colorscheme " .. colorscheme .. " not found!"))
else
  return nil
end

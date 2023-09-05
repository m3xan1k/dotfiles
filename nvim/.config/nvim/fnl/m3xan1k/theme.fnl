;; theme
(vim.cmd "set background=light")
(local colorscheme :simple)
(local (status-ok _) (pcall vim.cmd (.. "colorscheme " colorscheme)))
(when (not status-ok)
  (vim.notify (.. "colorscheme " colorscheme " not found!")))


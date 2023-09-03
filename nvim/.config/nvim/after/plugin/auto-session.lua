-- [nfnl] Compiled from after/plugin/auto-session.fnl by https://github.com/Olical/nfnl, do not edit.
do end (require("auto-session")).setup({auto_session_create_enabled = true, auto_session_enabled = true, auto_session_suppress_dirs = {"~/", "~/Projects", "~/Downloads", "/"}, log_level = vim.log.levels.ERROR, session_lens = {theme_conf = {border = true}, previewer = false}, auto_session_enable_last_session = false, auto_session_use_git_branch = false})
return vim.keymap.set("n", "<leader>fs", (require("auto-session.session-lens")).search_session, {noremap = true})

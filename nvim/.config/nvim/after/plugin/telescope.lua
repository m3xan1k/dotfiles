local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sk', builtin.keymaps, {})
vim.keymap.set('n', '<leader>sc', builtin.grep_string, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>sr', builtin.resume, {})
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})

local telescope = require('telescope')
telescope.setup {
    defaults = {
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
        },
        layout_strategy = "vertical",
        layout_config = {
            vertical = {
                height = 0.99,
                width = 0.99,
                preview_cutoff = 10,
            }
        },
        preview = {
            treesitter = false,
        }
    },
}
--vim.keymap.set('n', '<C-s>', function()
--	builtin.grep_string({search = vim.fn.input("Grep > ")})
--end)
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

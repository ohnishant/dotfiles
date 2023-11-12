return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local builtin = require('telescope.builtin')

        local keymap = vim.keymap
        keymap.set('n', '<leader>pf', builtin.find_files, {})
        keymap.set('n', '<C-f>', builtin.live_grep, {})
        keymap.set('n', '<C-p>', builtin.git_files, {})
        keymap.set('n', '<leader>fb', builtin.buffers, {})
        keymap.set('n', '<leader>fh', builtin.help_tags, {})

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    }
                }
            }
        })
        telescope.load_extension("fzf");
    end
}

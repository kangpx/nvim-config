local telescope = require('telescope')
local lga_actions = require('telescope-live-grep-args.actions')

telescope.setup{
    extensions = {
        project = { },

        live_grep_args = {
            auto_quoting = true,
            mappings = {
                i = {
                    ["<C-k>"] = lga_actions.quote_prompt(),
                    ["<C-i>"] = lga_actions.quote_prompt({postfix = " --iglob "}),
                },
            },
        },

        yank_history = { },
    }
}

-- telescope.load_extension('project')
-- telescope.load_extension('live_grep_args')

require("nvim-tree").setup({
    -- open_on_setup = true,
    -- open_on_setup_file = true,
    hijack_cursor = true,
    actions = {
        open_file = {
            quit_on_open = true
        }
    }
})

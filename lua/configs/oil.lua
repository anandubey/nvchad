require("oil").setup {
    columns = { "icon" },
    keymaps = {
        ["<C-h>"] = false,
        ["<M-h>"] = "actions.select_split",
    },
    view_options = {
        show_hidden = true,
    },
    skip_confirm_for_simple_edits = true,
    prompt_save_on_select_new_entry = false,
}

vim.keymap.set("n", "-", "<Cmd>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<space>-", require("oil").toggle_float, { desc = "Open parent directory in floating window" })

require("crates").setup {
    popup = {
        autofocus = true,
    },
    completion = {
        cmp = {
            enabled = true,
        },
    },
    lsp = {
        enabled = true,
        on_attach = function(client, bufnr)
            -- the same on_attach function as for your other lsp's
        end,
        actions = true,
        completion = true,
        hover = true,
    },
}
local crates = require "crates"
local opts = { silent = true }

vim.keymap.set("n", "<leader>ccv", crates.show_versions_popup, opts)
vim.keymap.set("n", "<leader>ccf", crates.show_features_popup, opts)
vim.keymap.set("n", "<leader>ccd", crates.show_dependencies_popup, opts)

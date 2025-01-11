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

local map = vim.keymap.set
map("n", "<leader>ccv", crates.show_versions_popup, { desc = "Crates show version picker" })
map("n", "<leader>ccf", crates.show_features_popup, { desc = "Crates show features picker" })
map("n", "<leader>ccd", crates.show_dependencies_popup, { desc = "Crates show dependency list" })

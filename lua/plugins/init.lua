return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        opts = require "configs.conform",
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = require "configs.treesitter",
    },

    {
        "stevearc/oil.nvim",
        lazy = false,
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require "configs.oil"
        end,
    },
    {
        "mrcjkb/rustaceanvim",
        version = "^5",
        lazy = false,
        opts = require "configs.rusty",
    },
    {
        "saecki/crates.nvim",
        ft = { "toml" },
        config = function()
            require "configs.crates"
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        opts = function()
            local M = require "nvchad.configs.cmp"
            table.insert(M.sources, { name = "crates" })
            return M
        end,
    },
}

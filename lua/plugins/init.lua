return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
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
        init = function()
            vim.g.rustaceanvim = {
                tools = {
                    code_actions = {
                        ui_select_fallback = false,
                    },
                    float_win_config = {
                        auto_focus = true,
                        open_split = "horizontal",
                    },
                },
                server = {
                    default_settings = {
                        ["rust-analyzer"] = {
                            hover = {
                                show = {
                                    structFields = 40,
                                },
                            },
                        },
                    },
                },
            }
        end,
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

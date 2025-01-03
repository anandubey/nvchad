return {
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

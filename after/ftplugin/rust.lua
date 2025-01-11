local map = vim.keymap.set
local bufnr = vim.api.nvim_get_current_buf()

local function opts(desc)
    return { buffer = bufnr, desc = "LSP " .. desc }
end

local function show_documentation()
    local filetype = vim.bo.filetype
    if filetype == "vim" or filetype == "help" then
        vim.cmd("h " .. vim.fn.expand "<cword>")
    elseif filetype == "man" then
        vim.cmd("Man " .. vim.fn.expand "<cword>")
    elseif vim.fn.expand "%:t" == "Cargo.toml" and require("crates").popup_available() then
        require("crates").show_popup()
    else
        vim.cmd.RustLsp { "hover", "actions" }
    end
end

map("n", "gD", vim.lsp.buf.declaration, opts "Go to declaration")

map("n", "gd", vim.lsp.buf.definition, opts "Go to definition")

map("n", "gi", vim.lsp.buf.implementation, opts "Go to implementation")

map("n", "<leader>ca", function()
    vim.cmd.RustLsp "codeAction"
end, opts "Code action")

map("n", "K", show_documentation, opts "Hover and code actions")

map("n", "<leader>ih", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { 0 })
end)

map("n", "<leader>cm", function()
    vim.cmd.RustLsp "expandMacro"
end, opts "Expand macro recursively")

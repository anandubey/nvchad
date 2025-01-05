require "nvchad.mappings"

-- Disable mappings
local nomap = vim.keymap.del

nomap("n", "<leader>b")
nomap("n", "<leader>n")
nomap("n", "<leader>ch")
nomap("n", "<leader>rn")

local map = vim.keymap.set

map("n", "*", "*zzzv", { desc = "better *" })
map("n", "#", "#zzzv", { desc = "better #" })
map("n", ",", ",zzzv", { desc = "better ," })
map("n", ";", ";zzzv", { desc = "better ;" })
map("n", "n", "nzzzv", { desc = "better n" })
map("n", "N", "Nzzzv", { desc = "better N" })
map("n", "N", "<C-d>zzzv", { desc = "better down scroll" })
map("n", "N", "<C-u>zzzv", { desc = "better up scroll" })

map("v", "<", "<gv", { desc = "better de-indent" })
map("v", ">", ">gv", { desc = "better indent" })

map("n", "<leader>n", "<cmd>enew<CR>", { desc = "buffer new" })
map("n", "<leader>nch", "<cmd>NvCheatsheet<CR>", { desc = "toggle nvcheatsheet" })

require "nvchad.mappings"

-- Disable mappings
local nomap = vim.keymap.del

nomap("n", "<leader>b")
nomap("n", "<leader>n")
nomap("n", "<leader>ch")
nomap("n", "<leader>rn")

local map = vim.keymap.set

map("n", "*", "*zzzv", { desc = "Improved better *" })
map("n", "#", "#zzzv", { desc = "Improved better #" })
map("n", ",", ",zzzv", { desc = "Improved better ," })
map("n", ";", ";zzzv", { desc = "Improved better ;" })
map("n", "n", "nzzzv", { desc = "Improved better n" })
map("n", "N", "Nzzzv", { desc = "Improved better N" })
map("n", "N", "<C-d>zzzv", { desc = "Improved better down scroll" })
map("n", "N", "<C-u>zzzv", { desc = "Improved better up scroll" })

map("v", "<", "<gv", { desc = "Improved better de-indent" })
map("v", ">", ">gv", { desc = "Improved better indent" })

map("n", "<leader>n", "<cmd>enew<CR>", { desc = "Buffer new" })
map("n", "<leader>nch", "<cmd>NvCheatsheet<CR>", { desc = "toggle nvcheatsheet" })

require "nvchad.mappings"

local map = vim.keymap.set

map("n", "*", "*zzzv")
map("n", "#", "#zzzv")
map("n", ",", ",zzzv")
map("n", ";", ";zzzv")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("v", "<", "<gv")
map("v", ">", ">gv")

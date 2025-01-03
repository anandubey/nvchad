require "nvchad.options"

local opt = vim.opt

opt.cursorlineopt = "both" -- to enable cursorline!
opt.foldenable = true
opt.foldmethod = "manual"
opt.scrolloff = 10 -- Lines of context
opt.sidescrolloff = 10 -- Columns of context

-- Don't have `o` add a comment
-- opt.formatoptions:remove "cro"
vim.cmd "autocmd BufEnter * set formatoptions-=cro"
vim.cmd "autocmd BufEnter * setlocal formatoptions-=cro"

opt.wrap = true
opt.linebreak = true
opt.cmdheight = 0
opt.mouse = "a"

opt.joinspaces = false

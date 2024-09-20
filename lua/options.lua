require "nvchad.options"

-- add yours here!

local o = vim.o
local g = vim.g

o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = true
o.scrolloff = 30
o.wrap = false
o.shiftwidth = 4

g.loaded_python3_provider = 1
g.python3_host_prog = '~/.conda/envs/master/bin/python'

-- Prevent auto insterting the comment while typing "o"
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    command = "set formatoptions-=c formatoptions-=r formatoptions-=o"
})


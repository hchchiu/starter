require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = true
o.scrolloff = 30
o.wrap = false

-- Prevent auto insterting the comment while typing "o"
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    command = "set formatoptions-=c formatoptions-=r formatoptions-=o"
})

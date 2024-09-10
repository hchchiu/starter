require "nvchad.mappings"

local map = vim.keymap.set
-- add yours here
-- map("n", ";", ":", { desc = "CMD enter command mode" })

--- Normal
map("i", "jk", "<ESC>")
map("n", ":W", ":w", { remap = true })
map("v", "p", "pgvy") --- paste over visually selected lines over and over

-- NVChad Terminal
map({ "i", "n", "t" }, "<C-,>", function()
    require("nvchad.term").toggle {
        pos = "float",
        id = "floatTerm",
        float_opts = {
            relative = "editor",
            row = 0.05,
            col = 0.1,
            width = 0.8,
            height = 0.8,
            border = "single",
        },
    }
end, { desc = "terminal toggle floating term" })

--  Resize window
map({ "i", "n" }, "]]", "<C-w>5>", { desc = "Resize window to right" })
map({ "i", "n" }, "[[", "<C-w>5<", { desc = "Resize window to left" })

-- Nvim DAP
map("n", "<F7>", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<F10>", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<F12>", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<F5>", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<F9>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })

-- NVChad Tabufline
map("n", "<leader>X", function()
    require("nvchad.tabufline").closeAllBufs()
end, { desc = "buffer close" })

-- Telescope
map("n", "<leader>fa", "<cmd>Telescope find_files<CR>", { desc = "telescope find files" })
map("n", "<leader>ff", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
    { desc = "telescope find all files" })
map("n", "<leader>fs", "viw<cmd>Telescope grep_string<CR>", { desc = "telescope find selected word" })

-- Spectre
map('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', { desc = "Toggle Spectre" })
-- vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
--     desc = "Search current word"
-- })
-- vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
--     desc = "Search current word"
-- })
-- vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
--     desc = "Search on current file"
-- })

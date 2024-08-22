require "nvchad.mappings"

local map = vim.keymap.set
-- add yours here

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", ":W", ":w <cr>", { remap = true })

-- NVChad Terminal
map({ "i", "n", "t" }, "<C-j>", function()
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

require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- NVChad Terminal
map({"i", "n", "t"}, "<leader>j", function ()
  require("nvchad.term").toggle { pos = "float",
                                  id = "floatTerm",
                                  float_opts = {
                                    relative = 'editor',
                                    row = 0.05,
                                    col = 0.1,
                                    width = 0.8,
                                    height = 0.8,
                                    border = "single"
                                  }
  } end, { desc = "terminal toggle floating term" })

--  Resize window
map ({"i", "n"}, "]]", "<C-w>5>", {desc = "Resize window to left"})
map ({"i", "n"}, "[[", "<C-w>5<", {desc = "Resize window to right"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

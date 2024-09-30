require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- local g = vim.g

vim.o.cursorlineopt = "both" -- to enable cursorline!
vim.o.relativenumber = true
vim.o.scrolloff = 30
vim.o.wrap = false
vim.o.shiftwidth = 4

vim.g.loaded_python3_provider = 1
vim.g.python3_host_prog = "~/.conda/envs/master/bin/python"

-- Prevent auto insterting the comment while typing "o"
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  command = "set formatoptions-=c formatoptions-=r formatoptions-=o",
})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false, -- Disable virtual text
  signs = true, -- Keep signs in the gutter
  underline = true, -- Keep underlines
  update_in_insert = false, -- Do not update diagnostics in insert mode
  severity_sort = false, -- Do not sort by severity
})

-- You will likely want to reduce updatetime which affects CursorHold
vim.o.updatetime = 200
-- note: this setting is global and should be set only once
-- Function to show diagnostics in a floating window when the cursor is on a diagnostic
vim.api.nvim_create_autocmd({ "CursorHold" }, {
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      border = "rounded",
      source = "always",
      prefix = " ",
      scope = "cursor",
    }
    vim.diagnostic.open_float(nil, opts)
  end,
})

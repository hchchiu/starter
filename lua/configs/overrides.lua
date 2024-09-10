local M = {}

M.nvimtree = {
  filters = {
    git_ignored = false,
    dotfiles = false,
  },
}

M.mason = {
  pkgs = {
    "clangd",
    "lua-language-server",
  },
}

return M

local overrides = require "configs.overrides"
return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "cpp",
      },
    },
  },

  -- Nvim DAP
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "configs.dap_config"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require("dapui").setup()
    end,
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
  },

  -- Spectre
  {
    "nvim-pack/nvim-spectre",
  },

  -- Auto Session
  {
    "rmagatti/auto-session",
    lazy = false,
    dependencies = {
      "nvim-telescope/telescope.nvim", -- Only needed if you want to use session lens
    },

    --- enables autocomplete for opts
    opts = {
      suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      -- log_level = 'debug',
    },
  },

  -- TODO Comment
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },

  ---------------------------------------------------
  --- Overrides the NVChad default configurations ---
  ---------------------------------------------------

  -- NvimTree
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Mason
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
}

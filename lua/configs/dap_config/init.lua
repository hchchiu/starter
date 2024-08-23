local dap = require "dap"

require "configs.dap_config.ui"

local lldb              = require "configs.dap_config.lldb"
local gdb               = require "configs.dap_config.gdb"
local codelldb          = require "configs.dap_config.codelldb"

-- dap.adapters.lldb = lldb.adapter
-- dap.adapters.gdb = gdb.adapter
dap.adapters.codelldb   = codelldb.adapter

-- dap.configurations.c = lldb.config
-- dap.configurations.cpp = lldb.config
-- dap.configurations.rust = lldb.config
-- dap.configurations.c = gdb.config
-- dap.configurations.cpp = gdb.config
-- dap.configurations.rust = gdb.config
dap.configurations.c    = codelldb.config
dap.configurations.cpp  = codelldb.config
-- dap.configurations.rust = codelldb.config

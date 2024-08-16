local dap = require "dap"

require "configs.dap_config.ui"

local lldb = require "configs.dap_config.lldb"

dap.adapters.lldb = lldb.adapter

dap.configurations.c = lldb.config
dap.configurations.cpp = lldb.config
dap.configurations.rust = lldb.config

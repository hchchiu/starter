local M = {}

local program_abs_path = vim.fn.getcwd() .. "/gv"
local debug_args = "-f ./debug.dofile"

M.adapter = {
    type = "server",
    port = "${port}",
    executable = {
        -- CHANGE THIS to your path!
        command = "/home/chiu/.local/share/nvim/mason/bin/codelldb",
        -- command = "/home/chiu/.local/share/nvim/mason/packages/codelldb/codelldb",
        args = { "--port", "${port}" },

        -- On windows you may have to uncomment this:
        -- detached = false,
    }
}

M.config = {
    {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
    },
}

return M

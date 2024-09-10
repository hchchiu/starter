local M = {}

local program_abs_path = vim.fn.getcwd() .. "/gv"
local debug_args = "-f ./debug.dofile"

M.adapter = {
    type = "server",
    port = "${port}",
    executable = {
        -- CHANGE THIS to your path!
        command = "/home/chiu/.local/share/nvim/mason/bin/codelldb",
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
        -- program = function()
        --     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        -- end,
        program = program_abs_path,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = function()
            -- local argument_string = vim.fn.input "Program arguments: "
            local argument_string = debug_args
            return vim.fn.split(argument_string, " ", true)
        end,
    },
}

return M

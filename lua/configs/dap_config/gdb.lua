local M = {}

local program_abs_path = vim.fn.getcwd() .. "/gv"
local debug_args = "-f ./debug.dofile"

M.adapter = {
    type = "executable",
    command = "gdb",
    args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
}

M.config = {
    {

        name = "Launch",
        type = "gdb",
        request = "launch",
        -- program = function()
        --     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        -- end,
        program = program_abs_path,
        cwd = "${workspaceFolder}",
        stopAtBeginningOfMainSubprogram = false,
        args = function()
            -- local argument_string = vim.fn.input "Program arguments: "
            local argument_string = debug_args
            return vim.fn.split(argument_string, " ", true)
        end,
        console = "integratedTerminal",
    },
}

return M

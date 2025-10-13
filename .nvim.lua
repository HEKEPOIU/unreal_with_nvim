local overseer = require("overseer")
overseer.register_template({
    name = "build",
    params = {},
    condition = {
        -- This makes the template only available in the current directory
        -- In case you :cd out later
        dir = vim.fn.getcwd(),
    },
    builder = function()
        return {
            cmd = { "UEbuild.bat", },
            components = {
                "on_exit_set_status",
                { "on_complete_notify" },
                { "on_output_parse",   problem_matcher = "$msCompile" },
            },
            args = { "LearnUEProject" },
        }
    end,
})




local isBuild = false;
vim.keymap.set("n", "<A-m>",
    function()
        if not isBuild then
            vim.cmd("OverseerRun build")
            isBuild = true;
        else
            vim.cmd("OverseerQuickAction restart")
        end
    end
)

overseer.register_template({
    name = "run",
    params = {},
    condition = {
        dir = vim.fn.getcwd(),
    },
    builder = function()
        return {
            cmd = { "UErun.bat", },
            components = {
                "on_exit_set_status",
                { "on_complete_notify" },
                { "on_output_parse",   problem_matcher = "$msCompile" },
            },
            args = { "LearnUEProject" },
        }
    end,
})

vim.keymap.set("n", "<A-r>",
    function()
        vim.cmd("OverseerRun run")
    end
)

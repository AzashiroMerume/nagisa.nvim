local nagisa = {}
local config = require("nagisa.config")

---@param opts NagisaConfig
nagisa.setup = function(opts)
    config.setup(opts)
    nagisa.theme = config.opts.theme
end

---@param theme_name? string
nagisa.load = function(theme_name)
    local utils = require("nagisa.utils")

    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true

    nagisa.theme = theme_name or config.opts.theme or nagisa.theme

    if not utils.load_compiled(nagisa.theme) then
        nagisa.compile()
        utils.load_compiled(nagisa.theme)
    end
end

function nagisa.compile()
    local utils = require("nagisa.utils")
    local colors = require("nagisa.colors")

    utils.compile(nagisa.theme, config.opts, colors)
end

vim.api.nvim_create_user_command("NagisaCompile", function()
    -- Clear cached modules
    for mod, _ in pairs(package.loaded) do
        if mod:match("^nagisa%.") then
            package.loaded[mod] = nil
        end
    end

    nagisa.compile()
    vim.notify("Nagisa compiled successfully!", vim.log.levels.INFO)
    nagisa.load(nagisa.theme)

    -- Trigger ColorScheme autocmd
    vim.api.nvim_exec_autocmds("ColorScheme", { modeline = false })
end, {})

return nagisa

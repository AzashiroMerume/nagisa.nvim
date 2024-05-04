local nagisa = {}
local config = require('nagisa.config')

-- Pass setup to config module
nagisa.setup = config.setup

nagisa.theme = 'EndOfTheWorld'

---@param style? string
nagisa.load = function(theme_name)
    local utils = require('nagisa.utils')

    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then vim.cmd('syntax reset') end

    vim.o.termguicolors = true

    nagisa.theme = theme_name or nagisa.theme

    nagisa.compile()
end

function nagisa.compile()
    local utils = require('nagisa.utils')
    local config = require('nagisa.config')
    local colors = require('nagisa.colors').get_colors(config.opts)
    local themes = require('nagisa.themes')

    utils.compile(nagisa.theme, themes[nagisa.theme], config.opts, colors)
end

vim.api.nvim_create_user_command("NagisaCompile", function()
    for mod, _ in pairs(package.loaded) do
        if mod:match("^nagisa%.") then package.loaded[mod] = nil end
    end
    nagisa.compile()
    vim.notify("Nagisa compiled successfully!", vim.log.levels.INFO)
    nagisa.load(nagisa.theme)
    vim.api.nvim_exec_autocmds("ColorScheme", {modeline = false})
end, {})

return nagisa

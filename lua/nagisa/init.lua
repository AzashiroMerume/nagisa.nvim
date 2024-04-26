-- init.lua
local nagisa = {}
local config = require('nagisa.config')
local themes = require('nagisa.themes')

nagisa.setup = config.setup

---@param style? string
nagisa.load = function(theme_name)
    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then vim.cmd('syntax reset') end

    vim.o.termguicolors = true

    -- Check if theme exists
    if not themes[theme_name] then
        error("Theme '" .. theme_name .. "' not found!")
    end

    local theme = themes[theme_name]

    theme.set_highlights(config.opts)
    theme.link_highlight()

    if config.opts.group_overrides then
        for group, val in pairs(config.opts['group_overrides']) do
            vim.api.nvim_set_hl(0, group, val)
        end
    end
end

return nagisa

local nagisa = {}
local config = require('nagisa.config')
local themes = require('nagisa.themes')
local colors = require('nagisa.colors').get_colors()

nagisa.setup = config.setup
nagisa.current_theme = nil

---@param style? string
nagisa.load = function(theme_name)
    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then vim.cmd('syntax reset') end

    vim.o.termguicolors = true

    if not themes[theme_name] then
        error("Theme '" .. theme_name .. "' not found!")
    end

    local theme = themes[theme_name]

    nagisa.current_theme = theme_name
    theme.set_highlights(colors, config.opts)
    require('nagisa.highlights.init').setup(colors, config)

    if config.opts.group_overrides then
        for group, val in pairs(config.opts['group_overrides']) do
            vim.api.nvim_set_hl(0, group, val)
        end
    end

end

function nagisa.compile()
    if not nagisa.current_theme then error("No theme is currently loaded!") end

    local theme_name = nagisa.current_theme
    local theme = themes[theme_name]
end

vim.api.nvim_create_user_command("NagisaCompile", function()
    for mod, _ in pairs(package.loaded) do
        if mod:match("^nagisa%.") then package.loaded[mod] = nil end
    end
    nagisa.compile()
    vim.notify("nagisa: compiled successfully!", vim.log.levels.INFO)
    vim.api.nvim_exec_autocmds("ColorScheme", {modeline = false})
end, {})

return nagisa

local config = {}

local defaults = {
    theme = "EndOfTheWorld",
    transparent = false,
    italic_comments = false,
    underline_links = false,
    color_overrides = {},
    group_overrides = {},
    disable_nvimtree_bg = true,
}

config.opts = {}

---@param user_opts? table
config.setup = function(user_opts)
    local global_settings_opts = vim.tbl_extend("force", defaults, {
        theme = vim.g.nagisa_theme or defaults.theme,
        italic_comments = (vim.g.nagisa_italic_comment == true or vim.g.nagisa_italic_comment == 1),
        underline_links = (vim.g.nagisa_underline_links == true or vim.g.nagisa_underline_links == 1),
        disable_nvimtree_bg = (vim.g.nagisa_disable_nvim_tree_bg == true or vim.g.nagisa_disable_nvim_tree_bg == 1),
    })

    config.opts = vim.tbl_extend("force", global_settings_opts, user_opts or {})
end

config.setup()

return config

local config = {}

---@class NagisaConfig
---@field theme? string
---@field transparent? boolean
---@field italic_comments? boolean
---@field underline_links? boolean
---@field color_overrides? table
---@field group_overrides? table
---@field disable_nvimtree_bg? boolean

-- Default configuration
local defaults = {
    theme = "EndOfTheWorld",
    transparent = false,
    italic_comments = false,
    underline_links = false,
    color_overrides = {},
    group_overrides = {},
    disable_nvimtree_bg = true,
}

---@type NagisaConfig
config.opts = {}

---@param user_opts? NagisaConfig
config.setup = function(user_opts)
    -- Extend defaults with user options, ensuring type correctness
    local global_settings_opts = vim.tbl_extend("force", defaults, {
        theme = vim.g.nagisa_theme or defaults.theme,
        transparent = vim.g.nagisa_transparent or defaults.transparent,
        italic_comments = (vim.g.nagisa_italic_comment == true or vim.g.nagisa_italic_comment == 1),
        underline_links = (vim.g.nagisa_underline_links == true or vim.g.nagisa_underline_links == 1),
        disable_nvimtree_bg = (vim.g.nagisa_disable_nvim_tree_bg == true or vim.g.nagisa_disable_nvim_tree_bg == 1),
    })

    -- Use user_opts or default if nil
    config.opts = vim.tbl_extend("force", global_settings_opts, user_opts or {})
end

config.setup()

return config

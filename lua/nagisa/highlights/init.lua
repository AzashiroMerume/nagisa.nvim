local h = {}

---@param theme Theme
---@param opts NagisaConfig
---@return table highlights
function h.setup(theme, opts)
    local highlights = {}

    local highlight_modules = { "editor", "syntax", "treesitter", "lsp", "plugins" }
    for _, highlight_module in ipairs(highlight_modules) do
        local mod = require("nagisa.highlights." .. highlight_module)
        local mod_highlights = mod.setup(theme, opts)
        if mod_highlights then
            for hl, spec in pairs(mod_highlights) do
                highlights[hl] = spec
            end
        end
    end

    -- Apply user-defined overrides
    for hl, spec in pairs(opts.group_overrides or {}) do
        if highlights[hl] and next(spec) then
            highlights[hl].link = nil
        end
        highlights[hl] = vim.tbl_extend("force", highlights[hl] or {}, spec)
    end

    return highlights
end

return h

local h = {}

function h.setup(colors, opts)
    local highlights = {}

    local theme_highlights = require("nagisa.theme").setup(colors, opts)
    for hl, spec in pairs(theme_highlights) do
        highlights[hl] = spec
    end

    local highlight_modules = { "treesitter", "lsp", "plugins" }

    for _, highlight_module in ipairs(highlight_modules) do
        local mod = require("nagisa.highlights." .. highlight_module)
        local mod_highlights = mod.setup(colors, opts)
        if mod_highlights then
            for hl, spec in pairs(mod_highlights) do
                highlights[hl] = spec
            end
        end
    end

    for hl, spec in pairs(opts.group_overrides) do
        if highlights[hl] and next(spec) then
            highlights[hl].link = nil
        end
        highlights[hl] = vim.tbl_extend("force", highlights[hl] or {}, spec)
    end

    return highlights
end

return h

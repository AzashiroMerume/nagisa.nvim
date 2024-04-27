local h = {}

function h.setup(colors, config)
    config.setup()

    local highlights = {}

    local highlight_modules = {"treesitter", "lsp", "plugins"}

    for _, highlight_module in ipairs(highlight_modules) do
        local mod = require("nagisa.highlights." .. highlight_module)
        local mod_highlights = mod.setup(colors, config.opts)
        if mod_highlights then
            for hl, spec in pairs(mod_highlights) do
                highlights[hl] = spec
            end
        end
    end

    for hl, spec in pairs(highlights) do
        vim.api.nvim_set_hl(0, hl, spec)
    end
end

return h

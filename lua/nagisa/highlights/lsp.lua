local function setup(theme, opts)
    opts = opts or require("nagisa.config").opts

    local highlights = {
        ["@type.builtin"] = { link = "@type" },
        ["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" },
        ["@lsp.type.type"] = { link = "@type" },
        ["@lsp.type.typeParameter"] = { link = "@type" },
        ["@lsp.type.macro"] = { link = "@constant" },
        ["@lsp.type.enumMember"] = { link = "@constant" },
        ["@lsp.typemod.variable.readonly"] = { link = "@constant" },
        ["@lsp.typemod.property.readonly"] = { link = "@constant" },
        ["@lsp.typemod.variable.constant"] = { link = "@constant" },
        ["@lsp.type.member"] = { link = "@function" },
        ["@lsp.type.keyword"] = { link = "@keyword" },
        ["@lsp.typemod.keyword.controlFlow"] = {
            fg = theme.pink,
            bg = theme.none,
        },
        ["@lsp.type.comment.c"] = {
            fg = theme.dimHighlight,
            bg = theme.none,
        },
        ["@lsp.type.comment.cpp"] = {
            fg = theme.dimHighlight,
            bg = theme.none,
        },
        ["@event"] = { link = "Identifier" },
        ["@interface"] = { link = "Identifier" },
        ["@modifier"] = { link = "Identifier" },
        ["@regexp"] = { fg = theme.red, bg = theme.none },
        ["@decorator"] = { link = "Identifier" },
    }

    return highlights
end

return { setup = setup }

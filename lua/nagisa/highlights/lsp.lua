-- LSP semantic tokens
local function setup(c, opts)
    local highlights = {
        ['@type.builtin'] = {link = '@type'},
        ['@lsp.typemod.type.defaultLibrary'] = {link = '@type.builtin'},
        ['@lsp.type.type'] = {link = '@type'},
        ['@lsp.type.typeParameter'] = {link = '@type'},
        ['@lsp.type.macro'] = {link = '@constant'},
        ['@lsp.type.enumMember'] = {link = '@constant'},
        ['@lsp.typemod.variable.readonly'] = {link = '@constant'},
        ['@lsp.typemod.property.readonly'] = {link = '@constant'},
        ['@lsp.typemod.variable.constant'] = {link = '@constant'},
        ['@lsp.type.member'] = {link = '@function'},
        ['@lsp.type.keyword'] = {link = '@keyword'},
        ['@lsp.typemod.keyword.controlFlow'] = {fg = c.nsaPink, bg = 'NONE'},
        ['@lsp.type.comment.c'] = {fg = c.nsaDimHighlight, bg = 'NONE'},
        ['@lsp.type.comment.cpp'] = {fg = c.nsaDimHighlight, bg = 'NONE'},
        ['@event'] = {link = 'Identifier'},
        ['@interface'] = {link = 'Identifier'},
        ['@modifier'] = {link = 'Identifier'},
        ['@regexp'] = {fg = c.nsaRed, bg = 'NONE'},
        ['@decorator'] = {link = 'Identifier'}
    }

    return highlights
end

return {setup = setup}

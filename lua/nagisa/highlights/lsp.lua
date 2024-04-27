local hl = vim.api.nvim_set_hl

-- LSP semantic tokens
local function setup(c, opts)
    local highlights = {}

    hl(0, '@type.builtin', {link = '@type'})
    hl(0, '@lsp.typemod.type.defaultLibrary', {link = '@type.builtin'})
    hl(0, '@lsp.type.type', {link = '@type'})
    hl(0, '@lsp.type.typeParameter', {link = '@type'})
    hl(0, '@lsp.type.macro', {link = '@constant'})
    hl(0, '@lsp.type.enumMember', {link = '@constant'})
    hl(0, '@lsp.typemod.variable.readonly', {link = '@constant'})
    hl(0, '@lsp.typemod.property.readonly', {link = '@constant'})
    hl(0, '@lsp.typemod.variable.constant', {link = '@constant'})
    hl(0, '@lsp.type.member', {link = '@function'})
    hl(0, '@lsp.type.keyword', {link = '@keyword'})
    hl(0, '@lsp.typemod.keyword.controlFlow', {fg = c.nsaPink, bg = 'NONE'})
    hl(0, '@lsp.type.comment.c', {fg = c.nsaDimHighlight, bg = 'NONE'})
    hl(0, '@lsp.type.comment.cpp', {fg = c.nsaDimHighlight, bg = 'NONE'})
    hl(0, '@event', {link = 'Identifier'})
    hl(0, '@interface', {link = 'Identifier'})
    hl(0, '@modifier', {link = 'Identifier'})
    hl(0, '@regexp', {fg = c.nsaRed, bg = 'NONE'})
    hl(0, '@decorator', {link = 'Identifier'})

    return highlights
end

return {setup = setup}

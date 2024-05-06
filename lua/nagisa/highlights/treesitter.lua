local hl = vim.api.nvim_set_hl

-- Treesitter
local function setup(c, opts)
    local highlights = {}

    hl(0, '@error', {fg = c.nsaErrorRed, bg = 'NONE'})
    hl(0, '@punctuation.bracket', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, '@punctuation.special', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, '@punctuation.delimiter', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, '@comment',
       {fg = c.nsaGray, bg = 'NONE', italic = opts.italic_comments})
    hl(0, '@comment.note', {fg = c.nsaGreenBlue, bg = 'NONE', bold = true})
    hl(0, '@comment.warning', {fg = c.nsaYellowOrange, bg = 'NONE', bold = true})
    hl(0, '@comment.error', {fg = c.nsaErrorRed, bg = 'NONE', bold = true})
    hl(0, '@constant', {fg = c.nsaOrange, bg = 'NONE'})
    hl(0, '@constant.builtin', {fg = c.nsaBlue, bg = 'NONE'})
    hl(0, '@constant.macro', {fg = c.nsaGreenBlue, bg = 'NONE'})
    hl(0, '@string.regexp', {fg = c.nsaOrange, bg = 'NONE'})
    hl(0, '@string', {fg = c.nsaGreen, bg = 'NONE'})
    hl(0, '@character', {fg = c.nsaGreen, bg = 'NONE'})
    hl(0, '@number', {fg = c.nsaLightGreen, bg = 'NONE'})
    hl(0, '@number.float', {fg = c.nsaLightGreen, bg = 'NONE'})
    hl(0, '@boolean', {fg = c.nsaOrange, bg = 'NONE'})
    hl(0, '@annotation', {fg = c.nsaRed, bg = 'NONE'})
    hl(0, '@attribute', {fg = c.nsaRed, bg = 'NONE'})
    hl(0, '@attribute.builtin', {fg = c.nsaGreenBlue, bg = 'NONE'})
    hl(0, '@module', {fg = c.nsaGreenBlue, bg = 'NONE'})
    hl(0, '@function', {fg = c.nsaRed, bg = 'NONE'})
    hl(0, '@function.builtin', {fg = c.nsaRed, bg = 'NONE'})
    hl(0, '@function.macro', {fg = c.nsaRed, bg = 'NONE'})
    hl(0, '@function.method', {fg = c.nsaRed, bg = 'NONE'})
    hl(0, '@variable', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, '@variable.builtin', {fg = c.nsaAccentBlue, bg = 'NONE'})
    hl(0, '@variable.parameter', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, '@variable.parameter.reference', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, '@variable.member', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, '@property', {fg = c.nsaLightBlue, bg = 'NONE'})
    hl(0, '@constructor', {fg = c.nsaBlue, bg = 'NONE'})
    hl(0, '@label', {fg = c.nsaLightBlue, bg = 'NONE'})
    hl(0, '@keyword', {fg = c.nsaPink, bg = 'NONE'})
    hl(0, '@keyword.conditional', {fg = c.nsaPink, bg = 'NONE'})
    hl(0, '@keyword.repeat', {fg = c.nsaPink, bg = 'NONE'})
    hl(0, '@keyword.return', {fg = c.nsaPink, bg = 'NONE'})
    hl(0, '@keyword.exception', {fg = c.nsaPink, bg = 'NONE'})
    hl(0, '@keyword.import', {fg = c.nsaPink, bg = 'NONE'})
    hl(0, '@operator', {fg = c.nsaOrange, bg = 'NONE'})
    hl(0, '@type', {fg = c.nsaAccentBlue, bg = 'NONE'})
    hl(0, '@type.qualifier', {fg = c.nsaAccentBlue, bg = 'NONE'})
    hl(0, '@structure', {fg = c.nsaGreenBlue, bg = 'NONE'})
    hl(0, '@tag', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, '@tag.delimiter', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, '@tag.attribute', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, '@text', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, '@markup.strong', {fg = c.nsaBlue, bold = true})
    hl(0, '@markup.italic', {fg = c.nsaFront, bg = 'NONE', italic = true})
    hl(0, '@markup.underline',
       {fg = c.nsaYellowOrange, bg = 'NONE', underline = true})
    hl(0, '@markup.strikethrough',
       {fg = c.nsaFront, bg = 'NONE', strikethrough = true})
    hl(0, '@markup.heading', {fg = c.nsaBlue, bold = true})
    hl(0, '@markup.raw', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, '@markup.raw.markdown', {fg = c.nsaOrange, bg = 'NONE'})
    hl(0, '@markup.raw.markdown_inline', {fg = c.nsaOrange, bg = 'NONE'})
    hl(0, '@markup.link.label',
       {fg = c.nsaLightBlue, bg = 'NONE', underline = opts.underline_links})
    hl(0, '@markup.link.url',
       {fg = c.nsaFront, bg = 'NONE', underline = opts.underline_links})
    hl(0, '@markup.list.checked', {link = 'Todo'})
    hl(0, '@markup.list.unchecked', {link = 'Todo'})
    hl(0, '@textReference', {fg = c.nsaOrange})
    hl(0, '@stringEscape', {fg = c.nsaOrange, bold = true})

    hl(0, '@diff.plus', {link = 'DiffAdd'})
    hl(0, '@diff.minus', {link = 'DiffDelete'})
    hl(0, '@diff.delta', {link = 'DiffChange'})

    return highlights
end

return {setup = setup}

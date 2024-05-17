local function setup(c, opts)
    local highlights = {
        ['@error'] = {fg = c.nsaErrorRed, bg = 'NONE'},
        ['@punctuation.bracket'] = {fg = c.nsaFront, bg = 'NONE'},
        ['@punctuation.special'] = {fg = c.nsaFront, bg = 'NONE'},
        ['@punctuation.delimiter'] = {fg = c.nsaFront, bg = 'NONE'},
        ['@comment'] = {
            fg = c.nsaGray,
            bg = 'NONE',
            italic = opts.italic_comments
        },
        ['@comment.note'] = {fg = c.nsaGreenBlue, bg = 'NONE', bold = true},
        ['@comment.warning'] = {
            fg = c.nsaYellowOrange,
            bg = 'NONE',
            bold = true
        },
        ['@comment.error'] = {fg = c.nsaErrorRed, bg = 'NONE', bold = true},
        ['@constant'] = {fg = c.nsaOrange, bg = 'NONE'},
        ['@constant.builtin'] = {fg = c.nsaBlue, bg = 'NONE'},
        ['@constant.macro'] = {fg = c.nsaGreenBlue, bg = 'NONE'},
        ['@string.regexp'] = {fg = c.nsaOrange, bg = 'NONE'},
        ['@string'] = {fg = c.nsaGreen, bg = 'NONE'},
        ['@character'] = {fg = c.nsaGreen, bg = 'NONE'},
        ['@number'] = {fg = c.nsaLightGreen, bg = 'NONE'},
        ['@number.float'] = {fg = c.nsaLightGreen, bg = 'NONE'},
        ['@boolean'] = {fg = c.nsaOrange, bg = 'NONE'},
        ['@annotation'] = {fg = c.nsaRed, bg = 'NONE'},
        ['@attribute'] = {fg = c.nsaRed, bg = 'NONE'},
        ['@attribute.builtin'] = {fg = c.nsaGreenBlue, bg = 'NONE'},
        ['@module'] = {fg = c.nsaGreenBlue, bg = 'NONE'},
        ['@function'] = {fg = c.nsaRed, bg = 'NONE'},
        ['@function.builtin'] = {fg = c.nsaRed, bg = 'NONE'},
        ['@function.macro'] = {fg = c.nsaRed, bg = 'NONE'},
        ['@function.method'] = {fg = c.nsaRed, bg = 'NONE'},
        ['@variable'] = {fg = c.nsaLightBlue, bg = 'NONE'},
        ['@variable.builtin'] = {fg = c.nsaAccentBlue, bg = 'NONE'},
        ['@variable.parameter'] = {fg = c.nsaFront, bg = 'NONE'},
        ['@variable.parameter.reference'] = {fg = c.nsaFront, bg = 'NONE'},
        ['@variable.member'] = {fg = c.nsaFront, bg = 'NONE'},
        ['@property'] = {fg = c.nsaLightBlue, bg = 'NONE'},
        ['@constructor'] = {fg = c.nsaBlue, bg = 'NONE'},
        ['@label'] = {fg = c.nsaLightBlue, bg = 'NONE'},
        ['@keyword'] = {fg = c.nsaPink, bg = 'NONE'},
        ['@keyword.conditional'] = {fg = c.nsaPink, bg = 'NONE'},
        ['@keyword.repeat'] = {fg = c.nsaPink, bg = 'NONE'},
        ['@keyword.return'] = {fg = c.nsaPink, bg = 'NONE'},
        ['@keyword.exception'] = {fg = c.nsaPink, bg = 'NONE'},
        ['@keyword.import'] = {fg = c.nsaPink, bg = 'NONE'},
        ['@operator'] = {fg = c.nsaOrange, bg = 'NONE'},
        ['@type'] = {fg = c.nsaAccentBlue, bg = 'NONE'},
        ['@type.qualifier'] = {fg = c.nsaAccentBlue, bg = 'NONE'},
        ['@structure'] = {fg = c.nsaGreenBlue, bg = 'NONE'},
        ['@tag'] = {fg = c.nsaLightGreen, bg = 'NONE'},
        ['@tag.delimiter'] = {fg = c.nsaFront, bg = 'NONE'},
        ['@tag.attribute'] = {fg = c.nsaOrange, bg = 'NONE'},
        ['@text'] = {fg = c.nsaFront, bg = 'NONE'},
        ['@markup.strong'] = {fg = c.nsaBlue, bold = true},
        ['@markup.italic'] = {fg = c.nsaFront, bg = 'NONE', italic = true},
        ['@markup.underline'] = {
            fg = c.nsaYellowOrange,
            bg = 'NONE',
            underline = true
        },
        ['@markup.strikethrough'] = {
            fg = c.nsaFront,
            bg = 'NONE',
            strikethrough = true
        },
        ['@markup.heading'] = {fg = c.nsaBlue, bold = true},
        ['@markup.raw'] = {fg = c.nsaFront, bg = 'NONE'},
        ['@markup.raw.markdown'] = {fg = c.nsaOrange, bg = 'NONE'},
        ['@markup.raw.markdown_inline'] = {fg = c.nsaOrange, bg = 'NONE'},
        ['@markup.link.label'] = {
            fg = c.nsaLightBlue,
            bg = 'NONE',
            underline = opts.underline_links
        },
        ['@markup.link.url'] = {
            fg = c.nsaFront,
            bg = 'NONE',
            underline = opts.underline_links
        },
        ['@markup.list.checked'] = {link = 'Todo'},
        ['@markup.list.unchecked'] = {link = 'Todo'},
        ['@textReference'] = {fg = c.nsaOrange},
        ['@stringEscape'] = {fg = c.nsaOrange, bold = true},
        ['@diff.plus'] = {link = 'DiffAdd'},
        ['@diff.minus'] = {link = 'DiffDelete'},
        ['@diff.delta'] = {link = 'DiffChange'}
    }

    return highlights
end

return {setup = setup}

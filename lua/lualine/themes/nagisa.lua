local init = require("nagisa")
local opts = init.get_opts()
local theme = init.get_theme()

local nagisa = {}

nagisa.normal = {
    a = { fg = theme.ui.fg, bg = theme.ui.statusline, gui = "bold" },
    b = { fg = theme.ui.statusline, bg = theme.ui.bg },
    c = { fg = theme.ui.fg, bg = opts.transparent and "NONE" or theme.ui.bg },
}

nagisa.visual = {
    a = { fg = theme.ui.bg, bg = theme.ui.dir, gui = "bold" },
    b = { fg = theme.ui.dir, bg = theme.ui.bg },
    c = { fg = theme.ui.fg, bg = opts.transparent and "NONE" or theme.ui.bg },
}

nagisa.inactive = {
    a = { fg = theme.ui.fg, bg = theme.ui.statusline, gui = "bold" },
    b = { fg = theme.ui.fg_dim, bg = theme.ui.bg },
    c = { fg = theme.ui.fg_dim, bg = opts.transparent and "NONE" or theme.ui.bg },
}

nagisa.replace = {
    a = { fg = theme.ui.fg, bg = theme.syn.special1, gui = "bold" },
    b = { fg = theme.syn.special1, bg = theme.ui.bg },
    c = { fg = theme.ui.fg, bg = opts.transparent and "NONE" or theme.ui.bg },
}

nagisa.insert = {
    a = { fg = theme.ui.bg, bg = theme.syn.string, gui = "bold" },
    b = { fg = theme.syn.string, bg = theme.ui.bg },
    c = { fg = theme.ui.fg, bg = opts.transparent and "NONE" or theme.ui.bg },
}

nagisa.terminal = {
    a = { fg = theme.ui.fg, bg = theme.ui.selection, gui = "bold" },
    b = { fg = theme.ui.selection, bg = theme.ui.bg },
    c = { fg = theme.ui.fg, bg = opts.transparent and "NONE" or theme.ui.bg },
}

nagisa.command = {
    a = { fg = theme.ui.fg, bg = theme.syn.func, gui = "bold" },
    b = { fg = theme.syn.func, bg = theme.ui.bg },
    c = { fg = theme.ui.fg, bg = opts.transparent and "NONE" or theme.ui.bg },
}

return nagisa

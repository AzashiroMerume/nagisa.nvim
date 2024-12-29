local nagisa = {}
local colors = {}

colors.inactive = "#666666"
colors.bg = "#262626"
colors.bg2 = "#373737"
colors.fg = "#ffffff"
colors.red = "#f44747"
colors.green = "#4EC9B0"
colors.blue = "#0a7aca"
colors.lightblue = "#5CB6F8"
colors.yellow = "#ffaf00"
colors.pink = "#DDB6F2"

local bg_normal = colors.bg2
local bg_replace = colors.bg2
local bg_insert = colors.bg2
local bg_terminal = colors.bg2
local bg_command = colors.bg2

nagisa.normal = {
    a = { fg = colors.fg, bg = colors.blue, gui = "bold" },
    b = { fg = colors.blue, bg = bg_normal },
    c = { fg = colors.fg, bg = bg_normal },
}

nagisa.visual = {
    a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
    b = { fg = colors.yellow, bg = bg_normal },
}

nagisa.inactive = {
    a = { fg = colors.fg, bg = colors.bg, gui = "bold" },
    b = { fg = colors.inactive, bg = bg_normal },
    c = { fg = colors.inactive, bg = bg_normal },
}

nagisa.replace = {
    a = { fg = colors.fg, bg = colors.red, gui = "bold" },
    b = { fg = colors.red, bg = bg_replace },
    c = { fg = colors.fg, bg = bg_normal },
}

nagisa.insert = {
    a = { fg = colors.bg, bg = colors.green, gui = "bold" },
    b = { fg = colors.green, bg = bg_insert },
    c = { fg = colors.fg, bg = bg_normal },
}

nagisa.terminal = {
    a = { fg = colors.fg, bg = colors.green, gui = "bold" },
    b = { fg = colors.fg, bg = bg_terminal },
    c = { fg = colors.fg, bg = bg_normal },
}

nagisa.command = {
    a = { fg = colors.fg, bg = colors.pink, gui = "bold" },
    b = { fg = colors.pink, bg = bg_command },
    c = { fg = colors.fg, bg = bg_normal },
}

return nagisa

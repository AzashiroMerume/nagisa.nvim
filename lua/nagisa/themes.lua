---@class Theme
---@field ui UiElements
---@field syn SyntaxElements
---@field vcs VCSElements
---@field diff DiffElements
---@field diag DiagnosticsElements

---@class UiElements
---@field fg string
---@field bg string
---@field fg_dim string
---@field bg_dim string
---@field col string
---@field border string
---@field search string
---@field cursor string
---@field selection string
---@field pmenu Pmenu
---@field statusline string

---@class Pmenu
---@field main string
---@field sel string

---@class SyntaxElements
---@field string string
---@field number string
---@field variable string
---@field constant string
---@field identifier string
---@field keyword string
---@field func string
---@field comment string
---@field operator string
---@field special1 string
---@field special2 string

---@class VCSElements
---@field added string
---@field removed string
---@field changed string

---@class DiffElements
---@field add string
---@field delete string
---@field change string
---@field text string

---@class DiagnosticsElements
---@field error string
---@field warning string
---@field info string
---@field hint string

---@param colors Colors
---@return Theme
local function setup(colors)
    return {
        ---@return Theme
        EndOfTheWorld = function()
            return {
                ui = {
                    fg = colors.front,
                    bg = colors.back,
                    fg_dim = colors.grayMid,
                    bg_dim = colors.grayDarkish,
                    col = colors.grayVeryDark,
                    border = colors.grayDark,
                    search = colors.blueGray,
                    cursor = colors.grayMidDark,
                    selection = colors.lightRed,

                    pmenu = {
                        main = colors.grayLight,
                        sel = colors.red,
                    },

                    statusline = colors.purpleDark,
                },
                syn = {
                    string = colors.green,
                    number = colors.lightGreen,
                    variable = colors.lightBlue,
                    constant = colors.orange,
                    identifier = colors.greenBlue,
                    keyword = colors.pink,
                    func = colors.red,
                    comment = colors.gray,
                    operator = colors.purple,
                    special1 = colors.blue,
                    special2 = colors.yellowOrange,
                },
                vcs = {
                    added = colors.green,
                    removed = colors.redDark,
                    changed = colors.yellowOrange,
                },
                diff = {
                    add = colors.greenPastel2,
                    delete = colors.redDarker,
                    change = colors.blueGrayDark,
                    text = colors.blueDark,
                },
                diag = {
                    error = colors.error,
                    warning = colors.yellow,
                    info = colors.blue,
                    hint = colors.greenBlue,
                },
            }
        end,
    }
end

return { setup = setup }

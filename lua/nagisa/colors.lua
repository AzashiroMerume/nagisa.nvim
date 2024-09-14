local colors = {}

colors.get_colors = function(opts)
    local opts = opts or require("nagisa.config").opts
    local theme = opts.theme
    local colorSchemes = {
        EndOfTheWorld = {
            none = "NONE",

            -- Grays
            grayDark = "#2D2D2D",
            grayDarker = "#343B41",
            grayVeryDark = "#222222",
            grayDarkish = "#444444",
            grayMidDark = "#51504F",
            grayMid = "#636369",
            grayMid2 = "#5A5A5A",
            grayMid3 = "#707070",
            grayLightish = "#AEAFAD",
            grayLight = "#BBBBBB",
            grayLighter = "#898989",
            grayDark2 = "#8c8c8c",
            grayDark3 = "#404040",
            blackishGray = "#272727",
            blueGray = "#515c6a",
            blueGrayDark = "#202d39",
            gray = "#546E7A",

            -- Blues
            blackishBlue = "#07090F",
            blueDark = "#264F78",
            blueDarker = "#004b72",
            darkBlue = "#14095B",
            mediumBlue = "#3721BE",
            disabledBlue = "#729DB3",
            lightBlue = "#9CDCFE",
            uiBlue = "#084671",
            accentBlue = "#2AABEF",
            popupHiglightLightBlue = "#d7eafe",
            blue = "#3772FF",

            -- Purples
            purpleDark = "#6f0687",
            purple = "#D95ADB",

            -- Reds
            redDark = "#8c2323",
            redDarker = "#6F1313",
            redPastel = "#c74e39",
            lightRed = "#FF1424",
            red = "#FF073A",

            -- Greens
            greenDark = "#373D29",
            green = "#5EF38C",
            greenLight = "#4B5632",
            greenBlue = "#17C3B2",
            lightGreen = "#65E7CD",
            greenDark = "#0E4732",
            greenPastel = "#81b88b",
            greenPastel2 = "#73c991",

            -- Yellows and Oranges
            yellowPastel = "#e2c08d",
            yellow = "#F0E100",
            yellowOrange = "#D89615",
            darkYellow = "#6C680A",
            orange = "#FF521B",
            uiOrange = "#f28b25",

            -- Pinks
            pink = "#F261C5",

            -- Miscellaneous
            back = "#07090F",
            front = "#e7e7e7",
            search = "#613315",
            dimHighlight = "#51504F",

            -- diagnostic
            error = "#DA1E37",
        },
    }

    local nagisaColors = colorSchemes[theme]

    -- Apply overrides if specified
    if opts.color_overrides then
        nagisaColors = vim.tbl_extend("force", nagisaColors, opts.color_overrides)
    end

    return nagisaColors
end

return colors

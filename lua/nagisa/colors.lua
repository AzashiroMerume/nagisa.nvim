local colors = {}

colors.get_colors = function(opts)
    local nagisaColors = {}

    -- Standard Colors
    nagisaColors.nsaNone = 'NONE'
    nagisaColors.nsaFront = '#e7e7e7'
    nagisaColors.nsaBack = '#07090F'
    nagisaColors.purpleDark = '#6f0687'
    nagisaColors.grayDark = '#2D2D2D'
    nagisaColors.blackishBlue = '#07090F'
    nagisaColors.grayMid = '#636369'
    nagisaColors.grayLight = '#BBBBBB'
    nagisaColors.blackishGray = '#272727'
    nagisaColors.blueDark = '#004b72'
    nagisaColors.grayDarker = '#343B41'
    nagisaColors.grayLighter = '#898989'
    nagisaColors.grayDarkish = '#444444'
    nagisaColors.grayVeryDark = '#222222'
    nagisaColors.grayMidDark = '#51504F'
    nagisaColors.grayLightish = '#AEAFAD'
    nagisaColors.blueDarker = '#264F78'
    nagisaColors.grayMid2 = '#5A5A5A'
    nagisaColors.redDark = '#8c2323'
    nagisaColors.redLight = '#6F1313'
    nagisaColors.greenDark = '#373D29'
    nagisaColors.greenLight = '#4B5632'
    nagisaColors.blueGray = '#515c6a'
    nagisaColors.nsaSearch = '#613315'
    nagisaColors.greenPastel = '#81b88b'
    nagisaColors.yellowPastel = '#e2c08d'
    nagisaColors.redPastel = '#c74e39'
    nagisaColors.greenPastel2 = '#73c991'
    nagisaColors.grayDark2 = '#8c8c8c'
    nagisaColors.grayDark3 = '#404040'
    nagisaColors.grayMid3 = '#707070'
    nagisaColors.blueGrayDark = '#202d39'

    -- Syntax Colors
    nagisaColors.nsaErrorRed = '#DA1E37'
    nagisaColors.nsaGray = '#546E7A'
    nagisaColors.nsaPurple = '#D95ADB'
    nagisaColors.nsaBlue = '#3772FF'
    nagisaColors.nsaAccentBlue = '#2AABEF'
    nagisaColors.nsaDarkBlue = '#14095B'
    nagisaColors.nsaMediumBlue = '#3721BE'
    nagisaColors.nsaDisabledBlue = '#729DB3'
    nagisaColors.nsaLightBlue = '#9CDCFE'
    nagisaColors.nsaGreen = '#5EF38C'
    nagisaColors.nsaGreenBlue = '#17C3B2'
    nagisaColors.nsaLightGreen = '#65E7CD'
    nagisaColors.nsaRed = '#FF073A'
    nagisaColors.nsaOrange = '#FF521B'
    nagisaColors.nsaLightRed = '#FF1424'
    nagisaColors.nsaYellow = '#F0E100'
    nagisaColors.nsaYellowOrange = '#D89615'
    nagisaColors.nsaDarkYellow = '#6C680A'
    nagisaColors.nsaPink = '#F261C5'
    nagisaColors.nsaDimHighlight = '#51504F'

    -- Other UI specific colors
    nagisaColors.nsaUiBlue = '#084671'
    nagisaColors.nsaUiOrange = '#f28b25'
    nagisaColors.nsaPopupHighlightLightBlue = '#d7eafe'

    -- Apply overrides if specified
    if opts.color_overrides then
        nagisaColors = vim.tbl_extend('force', nagisaColors,
                                      opts.color_overrides)
    end

    return nagisaColors
end

return colors

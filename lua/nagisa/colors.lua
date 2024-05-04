local colors = {}
colors.get_colors = function(opts)
    local nagisaColors = {} ---@type table<string,string>

    nagisaColors = {
        nsaNone = 'NONE',
        nsaFront = '#e7e7e7',
        nsaBack = '#07090F',

        nsaTabCurrent = '#6f0687',
        nsaTabOther = '#2D2D2D',
        nsaTabOutside = '#07090F',

        nsaLeftDark = '#07090F',
        nsaLeftMid = '#6f0687',
        nsaLeftLight = '#636369',

        nsaPopupFront = '#BBBBBB',
        nsaPopupBack = '#272727',
        nsaPopupHighlightBlue = '#004b72',
        nsaPopupHighlightGray = '#343B41',

        nsaSplitLight = '#898989',
        nsaSplitDark = '#444444',
        nsaSplitThumb = '#424242',

        nsaCursorDarkDark = '#222222',
        nsaCursorDark = '#51504F',
        nsaCursorLight = '#AEAFAD',
        nsaSelection = '#264F78',
        nsaLineNumber = '#5A5A5A',

        nsaDiffRedDark = '#8c2323',
        nsaDiffRedLight = '#6F1313',
        nsaDiffRedLightLight = '#FB0101',
        nsaDiffGreenDark = '#373D29',
        nsaDiffGreenLight = '#4B5632',
        nsaSearchCurrent = '#515c6a',
        nsaSearch = '#613315',

        nsaGitAdded = '#81b88b',
        nsaGitModified = '#e2c08d',
        nsaGitDeleted = '#c74e39',
        nsaGitRenamed = '#73c991',
        nsaGitUntracked = '#73c991',
        nsaGitIgnored = '#8c8c8c',
        nsaGitStageModified = '#e2c08d',
        nsaGitStageDeleted = '#c74e39',
        nsaGitConflicting = '#e4676b',
        nsaGitSubmodule = '#8db9e2',

        nsaContext = '#404040',
        nsaContextCurrent = '#707070',

        nsaFoldBackground = '#202d39',

        -- Syntax colors
        nsaErrorRed = '#DA1E37';
        nsaGray = '#546E7A';
        nsaPurple = '#D95ADB';
        nsaBlue = '#3772FF';
        nsaAccentBlue = '#2AABEF';
        nsaDarkBlue = '#14095B';
        nsaMediumBlue = '#3721BE';
        nsaDisabledBlue = '#729DB3';
        nsaLightBlue = '#9CDCFE';
        nsaGreen = '#5EF38C';
        nsaGreenBlue = '#17C3B2';
        nsaLightGreen = '#65E7CD';
        nsaRed = '#FF073A';
        nsaOrange = '#FF521B';
        nsaLightRed = '#FF1424';
        nsaYellow = '#F0E100';
        nsaYellowOrange = '#D89615';
        nsaDarkYellow = '#6C680A';
        nsaPink = '#F261C5';
        

        -- Low contrast with default background
        nsaDimHighlight = '#51504F'
    }

    -- Other ui specific colors
    nagisaColors.nsaUiBlue = '#084671'
    nagisaColors.nsaUiOrange = '#f28b25'
    nagisaColors.nsaPopupHighlightLightBlue = '#d7eafe'

    if opts.color_overrides then
        nagisaColors = vim.tbl_extend('force', nagisaColors,
                                      opts.color_overrides)
    end

    return nagisaColors
end

return colors

local colors = {}
colors.get_colors = function(opts)
    local nagisaColors = {} ---@type table<string,string>

    if vim.o.background == 'dark' then
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
            nsaGray = '#546E7A',
            nsaPurple = '#2738F2',
            nsaBlue = '#3772FF',
            nsaAccentBlue = '#2aabef',
            nsaDarkBlue = '#14095b',
            nsaMediumBlue = '#3721be',
            nsaDisabledBlue = '#729DB3',
            nsaLightBlue = '#9CDCFE',
            nsaGreen = '#5EF38C',
            nsaBlueGreen = '#17C3B2',
            nsaLightGreen = '#65e7cd',
            nsaRed = '#ee3030',
            nsaOrange = '#FF521B',
            nsaLightRed = '#E55934',
            nsaYellowOrange = '#d89615',
            nsaYellow = '#F0E100',
            nsaDarkYellow = '#6c680a',
            nsaPink = '#f261c5',

            -- Low contrast with default background
            nsaDimHighlight = '#51504F'
        }
    else
        nagisaColors = {
            nsaNone = 'NONE',
            nsaFront = '#343434',
            nsaBack = '#FFFFFF',

            nsaTabCurrent = '#FFFFFF',
            nsaTabOther = '#CECECE',
            nsaTabOutside = '#E8E8E8',

            nsaLeftDark = '#C4C4C4',
            nsaLeftMid = '#E5E5E5',
            nsaLeftLight = '#F3F3F3',

            nsaPopupFront = '#000000',
            nsaPopupBack = '#F3F3F3',
            nsaPopupHighlightBlue = '#0064c1',
            nsaPopupHighlightGray = '#767676',

            nsaSplitLight = '#EEEEEE',
            nsaSplitDark = '#DDDDDD',
            nsaSplitThumb = '#DFDFDF',

            nsaCursorDarkDark = '#E5EBF1',
            nsaCursorDark = '#6F6F6F',
            nsaCursorLight = '#767676',
            nsaSelection = '#ADD6FF',
            nsaLineNumber = '#098658',

            nsaDiffRedDark = '#FFCCCC',
            nsaDiffRedLight = '#FFA3A3',
            nsaDiffRedLightLight = '#FFCCCC',
            nsaDiffGreenDark = '#DBE6C2',
            nsaDiffGreenLight = '#EBF1DD',
            nsaSearchCurrent = '#A8AC94',
            nsaSearch = '#F8C9AB',

            nsaGitAdded = '#587c0c',
            nsaGitModified = '#895503',
            nsaGitDeleted = '#ad0707',
            nsaGitRenamed = '#007100',
            nsaGitUntracked = '#007100',
            nsaGitIgnored = '#8e8e90',
            nsaGitStageModified = '#895503',
            nsaGitStageDeleted = '#ad0707',
            nsaGitConflicting = '#ad0707',
            nsaGitSubmodule = '#1258a7',

            nsaContext = '#D2D2D2',
            nsaContextCurrent = '#929292',

            nsaFoldBackground = '#e6f3ff',

            -- Syntax colors
            nsaGray = '#000000',
            nsaViolet = '#000080',
            nsaBlue = '#0000FF',
            nsaDarkBlue = '#007ACC',
            nsaLightBlue = '#0451A5',
            nsaGreen = '#008000',
            nsaBlueGreen = '#16825D',
            nsaLightGreen = '#098658',
            nsaRed = '#FF0000',
            nsaOrange = '#C72E0F',
            nsaLightRed = '#A31515',
            nsaYellowOrange = '#800000',
            nsaYellow = '#795E26',
            nsaPink = '#AF00DB',

            -- Low contrast with default background
            nsaDimHighlight = '#B2DFDB'
        }
    end

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

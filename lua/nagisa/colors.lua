local colors = {}

colors.get_colors = function(opts)
	local opts = opts or require("nagisa.config").opts
	local theme = opts.theme
	local colorSchemes = {
		EndOfTheWorld = {
			nsaNone = "NONE",
			nsaFront = "#e7e7e7",
			nsaBack = "#07090F",
			purpleDark = "#6f0687",
			grayDark = "#2D2D2D",
			blackishBlue = "#07090F",
			grayMid = "#636369",
			grayLight = "#BBBBBB",
			blackishGray = "#272727",
			grayDarker = "#343B41",
			grayLighter = "#898989",
			grayDarkish = "#444444",
			grayVeryDark = "#222222",
			grayMidDark = "#51504F",
			grayLightish = "#AEAFAD",
			blueDark = "#264F78",
			blueDarker = "#004b72",
			grayMid2 = "#5A5A5A",
			redDark = "#8c2323",
			redDarker = "#6F1313",
			greenDark = "#373D29",
			greenLight = "#4B5632",
			blueGray = "#515c6a",
			nsaSearch = "#613315",
			greenPastel = "#81b88b",
			yellowPastel = "#e2c08d",
			redPastel = "#c74e39",
			greenPastel2 = "#73c991",
			grayDark2 = "#8c8c8c",
			grayDark3 = "#404040",
			grayMid3 = "#707070",
			blueGrayDark = "#202d39",
			nsaErrorRed = "#DA1E37",
			nsaGray = "#546E7A",
			nsaPurple = "#D95ADB",
			nsaBlue = "#3772FF",
			nsaAccentBlue = "#2AABEF",
			nsaDarkBlue = "#14095B",
			nsaMediumBlue = "#3721BE",
			nsaDisabledBlue = "#729DB3",
			nsaLightBlue = "#9CDCFE",
			nsaGreen = "#5EF38C",
			nsaGreenBlue = "#17C3B2",
			nsaLightGreen = "#65E7CD",
			nsaGreenDark = "#0E4732",
			nsaRed = "#FF073A",
			nsaOrange = "#FF521B",
			nsaLightRed = "#FF1424",
			nsaYellow = "#F0E100",
			nsaYellowOrange = "#D89615",
			nsaDarkYellow = "#6C680A",
			nsaPink = "#F261C5",
			nsaDimHighlight = "#51504F",
			nsaUiBlue = "#084671",
			nsaUiOrange = "#f28b25",
			nsaPopupHighlightLightBlue = "#d7eafe",
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

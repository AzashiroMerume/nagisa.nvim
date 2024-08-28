local colors = {}

colors.get_colors = function(opts)
	local opts = opts or require("nagisa.config").opts
	local theme = opts.theme
	local colorSchemes = {
		EndOfTheWorld = {
			none = "NONE",
			front = "#e7e7e7",
			back = "#07090F",
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
			search = "#613315",
			greenPastel = "#81b88b",
			yellowPastel = "#e2c08d",
			redPastel = "#c74e39",
			greenPastel2 = "#73c991",
			grayDark2 = "#8c8c8c",
			grayDark3 = "#404040",
			grayMid3 = "#707070",
			blueGrayDark = "#202d39",
			errorRed = "#DA1E37",
			gray = "#546E7A",
			purple = "#D95ADB",
			blue = "#3772FF",
			accentBlue = "#2AABEF",
			darkBlue = "#14095B",
			mediumBlue = "#3721BE",
			disabledBlue = "#729DB3",
			lightBlue = "#9CDCFE",
			green = "#5EF38C",
			greenBlue = "#17C3B2",
			lightGreen = "#65E7CD",
			greenDark = "#0E4732",
			red = "#FF073A",
			orange = "#FF521B",
			lightRed = "#FF1424",
			yellow = "#F0E100",
			yellowOrange = "#D89615",
			darkYellow = "#6C680A",
			pink = "#F261C5",
			dimHighlight = "#51504F",
			uiBlue = "#084671",
			uiOrange = "#f28b25",
			popupHiglightLightBlue = "#d7eafe",
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

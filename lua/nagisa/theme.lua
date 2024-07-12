local function setup(c, opts)
	local highlights = {
		["Normal"] = { fg = c.nsaFront, bg = c.nsaBack },
		["ColorColumn"] = { fg = "NONE", bg = c.grayVeryDark },
		["Cursor"] = { fg = c.grayMidDark, bg = c.grayLightish },
		["CursorLine"] = { bg = c.grayVeryDark },
		["CursorColumn"] = { fg = "NONE", bg = c.grayVeryDark },
		["Directory"] = { fg = c.nsaAccentBlue, bg = c.nsaBack },
		["DiffAdd"] = { fg = "NONE", bg = c.nsaGreenDark },
		["DiffChange"] = { fg = "NONE", bg = c.nsaDarkBlue },
		["DiffDelete"] = { fg = "NONE", bg = c.redDarker },
		["DiffText"] = { fg = "NONE", bg = c.nsaDarkBlue },
		["EndOfBuffer"] = { fg = c.nsaBack, bg = "NONE" },
		["ErrorMsg"] = { fg = c.nsaErrorRed, bg = c.nsaBack },
		["VertSplit"] = { fg = c.grayDarkish, bg = c.nsaBack },
		["WinSeparator"] = { link = "VertSplit" },
		["Folded"] = { fg = "NONE", bg = c.blueGrayDark },
		["FoldColumn"] = { fg = c.grayMid2, bg = c.nsaBack },
		["SignColumn"] = { fg = "NONE", bg = c.nsaBack },
		["IncSearch"] = { fg = c.nsaNone, bg = c.blueGray },
		["LineNr"] = { fg = c.grayMid2, bg = c.nsaBack },
		["CursorLineNr"] = { fg = c.grayLight, bg = c.nsaBack },
		["MatchParen"] = { fg = c.nsaNone, bg = c.nsaDimHighlight },
		["ModeMsg"] = { fg = c.nsaFront, bg = c.blackishBlue },
		["MoreMsg"] = { fg = c.nsaFront, bg = c.blackishBlue },
		["NonText"] = { fg = c.grayMid2, bg = c.nsaNone },
		["Pmenu"] = { fg = c.grayLight, bg = c.blackishGray },
		["PmenuSel"] = { fg = c.grayLight, bg = c.blueDarker },
		["PmenuSbar"] = { fg = "NONE", bg = c.grayDarker },
		["PmenuThumb"] = { fg = "NONE", bg = c.grayLight },
		["Question"] = { fg = c.nsaBlue, bg = c.nsaBack },
		["Search"] = { fg = c.nsaNone, bg = c.nsaSearch },
		["SpecialKey"] = { fg = c.nsaBlue, bg = c.nsaNone },
		["StatusLine"] = { fg = c.nsaFront, bg = c.purpleDark },
		["StatusLineNC"] = { fg = c.nsaFront, bg = c.blackishBlue },
		["TabLine"] = { fg = c.nsaFront, bg = c.grayDark },
		["TabLineFill"] = { fg = c.nsaFront, bg = c.blackishBlue },
		["TabLineSel"] = { fg = c.nsaFront, bg = c.purpleDark },
		["Title"] = { fg = c.nsaNone, bg = c.nsaNone, bold = true },
		["Visual"] = { fg = c.nsaNone, bg = c.blueDark },
		["VisualNOS"] = { fg = c.nsaNone, bg = c.blueDark },
		["WarningMsg"] = { fg = c.nsaOrange, bg = c.nsaBack, bold = true },
		["WildMenu"] = { fg = c.nsaNone, bg = c.blueDark },
		["Comment"] = {
			fg = c.nsaGray,
			bg = "NONE",
			italic = opts.italic_comments,
		},
		["Constant"] = { fg = c.nsaBlue, bg = "NONE" },
		["String"] = { fg = c.nsaGreen, bg = "NONE" },
		["Character"] = { fg = c.nsaGreen, bg = "NONE" },
		["Number"] = { fg = c.nsaLightGreen, bg = "NONE" },
		["Boolean"] = { fg = c.nsaOrange, bg = "NONE" },
		["Float"] = { fg = c.nsaLightGreen, bg = "NONE" },
		["Identifier"] = { fg = c.nsaGreenBlue, bg = "NONE" },
		["Function"] = { fg = c.nsaRed, bg = "NONE" },
		["Statement"] = { fg = c.nsaPink, bg = "NONE" },
		["Conditional"] = { fg = c.nsaPink, bg = "NONE" },
		["Repeat"] = { fg = c.nsaPink, bg = "NONE" },
		["Label"] = { fg = c.nsaPink, bg = "NONE" },
		["Operator"] = { fg = c.nsaPink, bg = "NONE" },
		["Keyword"] = { fg = c.nsaPink, bg = "NONE" },
		["Exception"] = { fg = c.nsaPink, bg = "NONE" },
		["PreProc"] = { fg = c.nsaPink, bg = "NONE" },
		["Include"] = { fg = c.nsaGreenBlue, bg = "NONE" },
		["Define"] = { fg = c.nsaPink, bg = "NONE" },
		["Macro"] = { fg = c.nsaPink, bg = "NONE" },
		["Type"] = { fg = c.nsaAccentBlue, bg = "NONE" },
		["StorageClass"] = { fg = c.nsaPurple, bg = "NONE" },
		["Structure"] = { fg = c.nsaGreenBlue, bg = "NONE" },
		["Typedef"] = { fg = c.nsaAccentBlue, bg = "NONE" },
		["Special"] = { fg = c.nsaPurple, bg = "NONE" },
		["SpecialChar"] = { fg = c.nsaFront, bg = "NONE" },
		["Tag"] = { fg = c.nsaLightGreen, bg = "NONE" },
		["Delimiter"] = { fg = c.nsaFront, bg = "NONE" },
		["SpecialComment"] = { fg = c.nsaGreen, bg = "NONE" },
		["Debug"] = { fg = c.nsaFront, bg = "NONE" },
		["Underlined"] = { fg = c.nsaNone, bg = "NONE", underline = true },
		["Conceal"] = { fg = c.nsaFront, bg = c.nsaBack },
		["Ignore"] = { fg = c.nsaFront, bg = "NONE" },
		["Error"] = {
			fg = c.nsaErrorRed,
			bg = c.nsaBack,
			undercurl = true,
			sp = c.nsaRed,
		},
		["Todo"] = { fg = c.nsaYellowOrange, bg = c.nsaBack, bold = true },
		["SpellBad"] = { fg = "NONE", undercurl = true, sp = c.nsaErrorRed },
		["SpellCap"] = { fg = "NONE", undercurl = true, sp = c.nsaYellow },
		["SpellRare"] = { fg = "NONE", undercurl = true, sp = c.nsaPurple },
		["SpellLocal"] = { fg = "NONE", undercurl = true, sp = c.nsaBlue },
		["Whitespace"] = { fg = c.grayMid2 },
		["NormalFloat"] = { bg = c.blackishGray },
		["WinBar"] = { fg = c.nsaFront, bg = c.nsaBack, bold = true },
		["WinBarNc"] = { fg = c.nsaFront, bg = c.nsaBack },
	}

	return highlights
end

return { setup = setup }

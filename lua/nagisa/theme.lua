local function setup(c, opts)
	local highlights = {
		["Normal"] = { fg = c.front, bg = c.back },
		["ColorColumn"] = { fg = "NONE", bg = c.grayVeryDark },
		["Cursor"] = { fg = c.grayMidDark, bg = c.grayLightish },
		["CursorLine"] = { bg = c.grayVeryDark },
		["CursorColumn"] = { fg = "NONE", bg = c.grayVeryDark },
		["Directory"] = { fg = c.accentBlue, bg = c.back },
		["DiffAdd"] = { fg = "NONE", bg = c.greenDark },
		["DiffChange"] = { fg = "NONE", bg = c.darkBlue },
		["DiffDelete"] = { fg = "NONE", bg = c.redDarker },
		["DiffText"] = { fg = "NONE", bg = c.darkBlue },
		["EndOfBuffer"] = { fg = c.back, bg = "NONE" },
		["ErrorMsg"] = { fg = c.errorRed, bg = c.back },
		["VertSplit"] = { fg = c.grayDarkish, bg = c.back },
		["WinSeparator"] = { link = "VertSplit" },
		["Folded"] = { fg = "NONE", bg = c.blueGrayDark },
		["FoldColumn"] = { fg = c.grayMid2, bg = c.back },
		["SignColumn"] = { fg = "NONE", bg = c.back },
		["IncSearch"] = { fg = c.none, bg = c.blueGray },
		["LineNr"] = { fg = c.grayMid2, bg = c.back },
		["CursorLineNr"] = { fg = c.grayLight, bg = c.back },
		["MatchParen"] = { fg = c.none, bg = c.dimHighlight },
		["ModeMsg"] = { fg = c.front, bg = c.blackishBlue },
		["MoreMsg"] = { fg = c.front, bg = c.blackishBlue },
		["NonText"] = { fg = c.grayMid2, bg = c.none },
		["Pmenu"] = { fg = c.grayLight, bg = c.back },
		["PmenuSel"] = { fg = c.red, bg = "NONE" },
		["PmenuSbar"] = { fg = "NONE", bg = c.back },
		["PmenuThumb"] = { fg = "NONE", bg = c.back },
		["Question"] = { fg = c.blue, bg = c.back },
		["Search"] = { fg = c.none, bg = c.search },
		["SpecialKey"] = { fg = c.blue, bg = c.none },
		["StatusLine"] = { fg = c.front, bg = c.purpleDark },
		["StatusLineNC"] = { fg = c.front, bg = c.blackishBlue },
		["TabLine"] = { fg = c.front, bg = c.grayDark },
		["TabLineFill"] = { fg = c.front, bg = c.blackishBlue },
		["TabLineSel"] = { fg = c.front, bg = c.purpleDark },
		["Title"] = { fg = c.none, bg = c.none, bold = true },
		["Visual"] = { fg = c.none, bg = c.blueDark },
		["VisualNOS"] = { fg = c.none, bg = c.blueDark },
		["WarningMsg"] = { fg = c.orange, bg = c.back, bold = true },
		["WildMenu"] = { fg = c.none, bg = c.blueDark },
		["Comment"] = {
			fg = c.gray,
			bg = "NONE",
			italic = opts.italic_comments,
		},
		["Constant"] = { fg = c.blue, bg = "NONE" },
		["String"] = { fg = c.green, bg = "NONE" },
		["Character"] = { fg = c.green, bg = "NONE" },
		["Number"] = { fg = c.lightGreen, bg = "NONE" },
		["Boolean"] = { fg = c.orange, bg = "NONE" },
		["Float"] = { fg = c.lightGreen, bg = "NONE" },
		["Identifier"] = { fg = c.greenBlue, bg = "NONE" },
		["Function"] = { fg = c.red, bg = "NONE" },
		["Statement"] = { fg = c.pink, bg = "NONE" },
		["Conditional"] = { fg = c.pink, bg = "NONE" },
		["Repeat"] = { fg = c.pink, bg = "NONE" },
		["Label"] = { fg = c.pink, bg = "NONE" },
		["Operator"] = { fg = c.pink, bg = "NONE" },
		["Keyword"] = { fg = c.pink, bg = "NONE" },
		["Exception"] = { fg = c.pink, bg = "NONE" },
		["PreProc"] = { fg = c.pink, bg = "NONE" },
		["Include"] = { fg = c.greenBlue, bg = "NONE" },
		["Define"] = { fg = c.pink, bg = "NONE" },
		["Macro"] = { fg = c.pink, bg = "NONE" },
		["Type"] = { fg = c.accentBlue, bg = "NONE" },
		["StorageClass"] = { fg = c.purple, bg = "NONE" },
		["Structure"] = { fg = c.greenBlue, bg = "NONE" },
		["Typedef"] = { fg = c.accentBlue, bg = "NONE" },
		["Special"] = { fg = c.purple, bg = "NONE" },
		["SpecialChar"] = { fg = c.front, bg = "NONE" },
		["Tag"] = { fg = c.lightGreen, bg = "NONE" },
		["Delimiter"] = { fg = c.front, bg = "NONE" },
		["SpecialComment"] = { fg = c.green, bg = "NONE" },
		["Debug"] = { fg = c.front, bg = "NONE" },
		["Underlined"] = { fg = c.none, bg = "NONE", underline = true },
		["Conceal"] = { fg = c.front, bg = c.back },
		["Ignore"] = { fg = c.front, bg = "NONE" },
		["Error"] = {
			fg = c.errorRed,
			bg = c.back,
			undercurl = true,
			sp = c.red,
		},
		["Todo"] = { fg = c.yellowOrange, bg = c.back, bold = true },
		["SpellBad"] = { fg = "NONE", undercurl = true, sp = c.errorRed },
		["SpellCap"] = { fg = "NONE", undercurl = true, sp = c.yellow },
		["SpellRare"] = { fg = "NONE", undercurl = true, sp = c.purple },
		["SpellLocal"] = { fg = "NONE", undercurl = true, sp = c.blue },
		["Whitespace"] = { fg = c.grayMid2 },
		["NormalFloat"] = { bg = c.blackishGray },
		["WinBar"] = { fg = c.front, bg = c.back, bold = true },
		["WinBarNc"] = { fg = c.front, bg = c.back },
	}

	return highlights
end

return { setup = setup }

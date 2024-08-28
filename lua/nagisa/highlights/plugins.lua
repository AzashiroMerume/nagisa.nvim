local function setup(c, opts)
	local highlights = {
		-- Lazy
		["LazyNormal"] = { fg = c.front, bg = c.back },
		["LazyCommit"] = { fg = c.blue, bg = c.back },
		["LazyCommitType"] = { fg = c.orange, bg = c.back },
		["LazyButton"] = { fg = c.lightBlue, bg = c.back },
		["LazyH1"] = { fg = c.purple, bg = c.back },
		["LazyProgressDone"] = { fg = c.green, bg = c.back },
		["LazyProgressTodo"] = { fg = c.yellow, bg = c.back },
		["LazySpecial"] = { fg = c.blue, bg = c.back },
		["LazyReasonCommand"] = { fg = c.blue, bg = c.back },
		["LazyReasonEvent"] = { fg = c.front, bg = c.back },
		["LazyReasonFt"] = { fg = c.front, bg = c.back },
		["LazyReasonImport"] = { fg = c.front, bg = c.back },
		["LazyReasonKeys"] = { fg = c.front, bg = c.back },
		["LazyReasonPlugin"] = { fg = c.front, bg = c.back },
		["LazyReasonRuntime"] = { fg = c.front, bg = c.back },
		["LazyTaskError"] = { fg = c.red, bg = c.back },

		-- GitGutter
		["GitGutterAdd"] = { fg = c.green, bg = "NONE" },
		["GitGutterChange"] = { fg = c.yellow, bg = "NONE" },
		["GitGutterDelete"] = { fg = c.red, bg = "NONE" },

		-- GitSigns
		["GitSignsAdd"] = { fg = c.green, bg = "NONE" },
		["GitSignsChange"] = { fg = c.blue, bg = "NONE" },
		["GitSignsDelete"] = { fg = c.red, bg = "NONE" },
		["GitSignsAddLn"] = { fg = "NONE", bg = c.greenDark },
		["GitSignsChangeLn"] = { fg = "NONE", bg = c.darkBlue },
		["GitSignsDeleteLn"] = { fg = "NONE", bg = c.redDarker },

		-- NvimTree
		["NvimTreeRootFolder"] = { fg = c.front, bg = "NONE", bold = true },
		["NvimTreeGitDirty"] = { fg = c.yellow, bg = "NONE" },
		["NvimTreeGitNew"] = { fg = c.green, bg = "NONE" },
		["NvimTreeImageFile"] = { fg = c.nsaViolet, bg = "NONE" },
		["NvimTreeEmptyFolderName"] = { fg = c.gray, bg = "NONE" },
		["NvimTreeFolderName"] = { fg = c.front, bg = "NONE" },
		["NvimTreeSpecialFile"] = {
			fg = c.pink,
			bg = "NONE",
			underline = true,
		},
		["NvimTreeNormal"] = {
			fg = c.front,
			bg = opts.disable_nvimtree_bg and c.back or c.blackishBlue,
		},
		["NvimTreeCursorLine"] = {
			fg = "NONE",
			bg = opts.disable_nvimtree_bg and c.grayVeryDark or c.purpleDark,
		},
		["NvimTreeVertSplit"] = {
			fg = opts.disable_nvimtree_bg and c.grayDarkish or c.back,
			bg = c.back,
		},
		["NvimTreeEndOfBuffer"] = {
			fg = opts.disable_nvimtree_bg and c.grayVeryDark or c.blackishBlue,
		},
		["NvimTreeOpenedFolderName"] = {
			fg = "NONE",
			bg = opts.disable_nvimtree_bg and c.grayVeryDark or c.blackishBlue,
		},
		["NvimTreeGitRenamed"] = { fg = c.greenPastel2, bg = "NONE" },
		["NvimTreeGitIgnored"] = { fg = c.grayDark2, bg = "NONE" },
		["NvimTreeGitDeleted"] = { fg = c.redPastel, bg = "NONE" },
		["NvimTreeGitStaged"] = { fg = c.yellowPastel, bg = "NONE" },
		["NvimTreeGitMerge"] = { fg = c.greenPastel2, bg = "NONE" },
		["NvimTreeGitDirty"] = { fg = c.yellowPastel, bg = "NONE" },
		["NvimTreeGitNew"] = { fg = c.greenPastel, bg = "NONE" },

		-- Harpoon
		["HarpoonCurrentFile"] = { fg = "NONE", bg = c.red },

		-- BufferLine
		["BufferLineIndicatorSelected"] = { fg = c.blackishBlue, bg = "NONE" },
		["BufferLineFill"] = { fg = "NONE", bg = c.blackishBlue },
		["BufferCurrent"] = { fg = c.front, bg = c.purpleDark },
		["BufferCurrentIndex"] = { fg = c.front, bg = c.purpleDark },
		["BufferCurrentMod"] = { fg = c.yellowOrange, bg = c.purpleDark },
		["BufferCurrentSign"] = { fg = c.front, bg = c.purpleDark },
		["BufferCurrentTarget"] = { fg = c.red, bg = c.purpleDark },
		["BufferVisible"] = { fg = c.gray, bg = c.purpleDark },
		["BufferVisibleIndex"] = { fg = c.gray, bg = c.purpleDark },
		["BufferVisibleMod"] = { fg = c.yellowOrange, bg = c.purpleDark },
		["BufferVisibleSign"] = { fg = c.gray, bg = c.purpleDark },
		["BufferVisibleTarget"] = { fg = c.red, bg = c.purpleDark },
		["BufferInactive"] = { fg = c.gray, bg = c.grayDark },
		["BufferInactiveIndex"] = { fg = c.gray, bg = c.grayDark },
		["BufferInactiveMod"] = { fg = c.yellowOrange, bg = c.grayDark },
		["BufferInactiveSign"] = { fg = c.gray, bg = c.grayDark },
		["BufferInactiveTarget"] = { fg = c.red, bg = c.grayDark },
		["BufferTabpage"] = { fg = c.front, bg = c.grayDark },
		["BufferTabpageFill"] = { fg = c.front, bg = c.grayDark },
		["BufferTabpages"] = { fg = c.front, bg = c.grayDark },
		["BufferTabpagesFill"] = { fg = c.front, bg = c.grayDark },

		-- IndentBlankline
		["IndentBlanklineContextChar"] = {
			fg = c.grayMid3,
			bg = "NONE",
			nocombine = true,
		},
		["IndentBlanklineContextStart"] = {
			sp = c.grayMid3,
			bg = "NONE",
			nocombine = true,
			underline = true,
		},
		["IndentBlanklineChar"] = {
			fg = c.grayDark3,
			bg = "NONE",
			nocombine = true,
		},
		["IndentBlanklineSpaceChar"] = {
			fg = c.grayDark3,
			bg = "NONE",
			nocombine = true,
		},
		["IndentBlanklineSpaceCharBlankline"] = {
			fg = c.grayDark3,
			bg = "NONE",
			nocombine = true,
		},

		-- Neotest
		["NeotestAdapterName"] = { fg = c.front, bold = true },
		["NeotestDir"] = { fg = c.blue },
		["NeotestExpandMarker"] = { fg = c.dimHighlight },
		["NeotestFailed"] = { fg = c.red },
		["NeotestFile"] = { fg = c.blue },
		["NeotestFocused"] = { bold = true },
		["NeotestIndent"] = { fg = c.dimHighlight },
		["NeotestMarked"] = { fg = c.yellowOrange, bold = true },
		["NeotestNamespace"] = { fg = c.pink },
		["NeotestPassed"] = { fg = c.greenBlue },
		["NeotestRunning"] = { fg = c.darkYellow },
		["NeotestSkipped"] = { fg = c.blue },
		["NeotestTarget"] = { fg = c.lightRed },
		["NeotestWatching"] = { fg = c.darkYellow },
		["NeotestWinSelect"] = { fg = c.blue, bold = true },

		-- LSP
		["DiagnosticOk"] = { fg = c.greenBlue, bg = "NONE" },
		["DiagnosticError"] = { fg = c.front, bg = c.errorRed },
		["DiagnosticWarn"] = { fg = c.yellow, bg = "NONE" },
		["DiagnosticInfo"] = { fg = c.blue, bg = "NONE" },
		["DiagnosticHint"] = { fg = c.blue, bg = "NONE" },
		["DiagnosticUnnecessary"] = { fg = c.yellow, bg = "NONE" },
		["DiagnosticUnderlineError"] = {
			fg = "NONE",
			bg = "NONE",
			undercurl = true,
			sp = c.errorRed,
		},
		["DiagnosticUnderlineWarn"] = {
			fg = "NONE",
			bg = "NONE",
			undercurl = true,
			sp = c.green,
		},
		["DiagnosticUnderlineInfo"] = {
			fg = "NONE",
			bg = "NONE",
			undercurl = true,
			sp = c.blue,
		},
		["DiagnosticUnderlineHint"] = {
			fg = "NONE",
			bg = "NONE",
			undercurl = true,
			sp = c.blue,
		},
		["LspReferenceText"] = { fg = "NONE", bg = c.grayDarker },
		["LspReferenceRead"] = { fg = "NONE", bg = c.grayDarker },
		["LspReferenceWrite"] = { fg = "NONE", bg = c.grayDarker },

		-- coc.nvim
		["CocHighlightText"] = { fg = "NONE", bg = c.grayDarker },
		["CocHighlightRead"] = { fg = "NONE", bg = c.grayDarker },
		["CocHighlightWrite"] = { fg = "NONE", bg = c.grayDarker },

		-- nvim-cope
		["CmpItemKindVariable"] = { fg = c.lightBlue, bg = "NONE" },
		["CmpItemKindInterface"] = { fg = c.lightBlue, bg = "NONE" },
		["CmpItemKindText"] = { fg = c.lightBlue, bg = "NONE" },
		["CmpItemKindFunction"] = { fg = c.pink, bg = "NONE" },
		["CmpItemKindMethod"] = { fg = c.pink, bg = "NONE" },
		["CmpItemKindKeyword"] = { fg = c.front, bg = "NONE" },
		["CmpItemKindProperty"] = { fg = c.front, bg = "NONE" },
		["CmpItemKindUnit"] = { fg = c.front, bg = "NONE" },
		["CmpItemKindConstructor"] = { fg = c.uiOrange, bg = "NONE" },
		["CmpItemMenu"] = { fg = c.grayLight, bg = "NONE" },
		["CmpItemAbbr"] = { fg = c.front, bg = "NONE" },
		["CmpItemAbbrDeprecated"] = {
			fg = c.grayMidDark,
			bg = c.blackishGray,
			strikethrough = true,
		},
		["CmpItemAbbrMatch"] = { fg = c.purple, bg = "NONE", bold = true },
		["CmpItemAbbrMatchFuzzy"] = {
			fg = c.mediumBlue,
			bg = "NONE",
			bold = true,
		},

		-- rcarriga/nvim-dap-ui
		["DapUIBreakpointsCurrentLine"] = { fg = c.greenBlue, bold = true },
		["DapUIBreakpointsDisabledLine"] = { fg = c.dimHighlight },
		["DapUIBreakpointsInfo"] = { fg = c.greenBlue },
		["DapUIBreakpointsLine"] = { fg = c.pink },
		["DapUIBreakpointsPath"] = { fg = c.pink },
		["DapUICurrentFrameName"] = { fg = c.greenBlue, bold = true },
		["DapUIDecoration"] = { fg = c.pink },
		["DapUIFloatBorder"] = { fg = c.pink },
		["DapUILineNumber"] = { fg = c.pink },
		["DapUIModifiedValue"] = { fg = c.pink, bold = true },
		["DapUIPlayPause"] = { fg = c.greenBlue },
		["DapUIPlayPauseNC"] = { fg = c.greenBlue },
		["DapUIRestart"] = { fg = c.greenBlue },
		["DapUIRestartNC"] = { fg = c.greenBlue },
		["DapUIScope"] = { fg = c.pink },
		["DapUISource"] = { fg = c.mediumBlue },
		["DapUIStepBack"] = { fg = c.pink },
		["DapUIStepBackNC"] = { fg = c.pink },
		["DapUIStepInto"] = { fg = c.pink },
		["DapUIStepIntoNC"] = { fg = c.pink },
		["DapUIStepOut"] = { fg = c.pink },
		["DapUIStepOutNC"] = { fg = c.pink },
		["DapUIStepOver"] = { fg = c.pink },
		["DapUIStepOverNC"] = { fg = c.pink },
		["DapUIStop"] = { fg = c.red },
		["DapUIStopNC"] = { fg = c.red },
		["DapUIStoppedThread"] = { fg = c.pink },
		["DapUIThread"] = { fg = c.greenBlue },
		["DapUIType"] = { fg = c.pink },
		["DapUIUnavailable"] = { fg = c.dimHighlight },
		["DapUIUnavailableNC"] = { fg = c.dimHighlight },
		["DapUIWatchesEmpty"] = { fg = c.dimHighlight },
		["DapUIWatchesError"] = { fg = c.red },
		["DapUIWatchesValue"] = { fg = c.greenBlue },
		["DapUIWinSelect"] = { fg = c.pink, bold = true },

		-- Dashboard
		["DashboardHeader"] = { fg = c.blue, bg = "NONE" },
		["DashboardDesc"] = { fg = c.yellowOrange, bg = "NONE" },
		["DashboardIcon"] = { fg = c.yellowOrange, bg = "NONE" },
		["DashboardShortCut"] = { fg = c.pink, bg = "NONE" },
		["DashboardKey"] = { fg = c.nsaWhite, bg = "NONE" },
		["DashboardFooter"] = { fg = c.blue, bg = "NONE", italic = true },

		-- Illuminate
		["illuminatedWord"] = { bg = c.grayDarker },
		["illuminatedCurWord"] = { bg = c.grayDarker },
		["IlluminatedWordText"] = { bg = c.grayDarker },
		["IlluminatedWordRead"] = { bg = c.grayDarker },
		["IlluminatedWordWrite"] = { bg = c.grayDarker },

		-- mini.statusline
		["MiniStatuslineModeNormal"] = { bg = c.blackishBlue, fg = c.front },
		["MiniStatuslineModeInsert"] = { bg = c.blackishBlue, fg = c.front },
		["MiniStatuslineModeVisual"] = { bg = c.blackishBlue, fg = c.front },
		["MiniStatuslineModeReplace"] = { bg = c.blackishBlue, fg = c.front },
		["MiniStatuslineModeCommand"] = { bg = c.blackishBlue, fg = c.front },
		["MiniStatuslineModeOther"] = { bg = c.blackishBlue, fg = c.front },
		["MiniStatuslineDevinfo"] = { bg = c.blackishBlue, fg = c.front },
		["MiniStatuslineFilename"] = { bg = c.purpleDark, fg = c.front },
		["MiniStatuslineFileinfo"] = { bg = c.grayMid, fg = c.front },
		["MiniStatuslineInactive"] = { bg = c.blackishBlue, fg = c.front },

		-- NeogitOrg/neogit
		["NeogitDiffAdd"] = { fg = c.green, bg = "NONE" },
		["NeogitDiffAddHighlight"] = { fg = "NONE", bg = c.greenDark },
		["NeogitDiffContext"] = { fg = c.grayLight, bg = c.blackishBlue },
		["NeogitDiffContextHighlight"] = { fg = "NONE", bg = c.darkBlue },
		["NeogitDiffDelete"] = { fg = c.red, bg = "NONE" },
		["NeogitDiffDeleteHighlight"] = { fg = "NONE", bg = c.redDarker },
		["NeogitDiffHeader"] = { fg = c.grayLighter, bg = c.back },
		["NeogitDiffHeaderHighlight"] = { fg = c.grayLighter, bg = c.back },
		["NeogitHunkHeader"] = { fg = c.yellowPastel, bg = c.blackishBlue },
		["NeogitHunkHeaderHighlight"] = { fg = c.yellowPastel, bg = c.purpleDark },

		["NvimTreeFolderIcon"] = { fg = c.blue, bg = "NONE" },
		["NvimTreeIndentMarker"] = { fg = c.grayMid2, bg = "NONE" },

		["LspFloatWinNormal"] = { fg = c.front, bg = "NONE" },
		["LspFloatWinBorder"] = { fg = c.grayMid2, bg = "NONE" },
		["LspInfoBorder"] = { fg = c.grayMid2, bg = "NONE" },
		["LspSagaHoverBorder"] = { fg = c.grayMid2, bg = "NONE" },
		["LspSagaSignatureHelpBorder"] = { fg = c.grayMid2, bg = "NONE" },
		["LspSagaCodeActionBorder"] = { fg = c.grayMid2, bg = "NONE" },
		["LspSagaDefPreviewBorder"] = { fg = c.grayMid2, bg = "NONE" },
		["LspLinesDiagBorder"] = { fg = c.grayMid2, bg = "NONE" },
		["LspSagaRenameBorder"] = { fg = c.grayMid2, bg = "NONE" },
		["LspSagaBorderTitle"] = { fg = c.grayMidDark, bg = "NONE" },
		["LSPSagaDiagnosticTruncateLine"] = { fg = c.grayMid2, bg = "NONE" },
		["LspSagaDiagnosticBorder"] = { fg = c.grayMid2, bg = "NONE" },
		["LspSagaDiagnosticBorder"] = { fg = c.grayMid2, bg = "NONE" },
		["LspSagaShTruncateLine"] = { fg = c.grayMid2, bg = "NONE" },
		["LspSagaShTruncateLine"] = { fg = c.grayMid2, bg = "NONE" },
		["LspSagaDocTruncateLine"] = { fg = c.grayMid2, bg = "NONE" },
		["LspSagaRenameBorder"] = { fg = c.grayMid2, bg = "NONE" },
		["LspSagaLspFinderBorder"] = { fg = c.grayMid2, bg = "NONE" },

		["TelescopeNormal"] = { fg = c.front, bg = "NONE" },
		["TelescopePromptBorder"] = { fg = c.grayMid2, bg = "NONE" },
		["TelescopeResultsBorder"] = { fg = c.grayMid2, bg = "NONE" },
		["TelescopePreviewBorder"] = { fg = c.grayMid2, bg = "NONE" },
		["TelescopeSelection"] = { fg = c.lightRed, bg = "NONE" },
		["TelescopeMultiSelection"] = { fg = c.lightRed, bg = "NONE" },
		["TelescopeMatching"] = { fg = c.purple, bg = "NONE", bold = true },
		["TelescopePromptPrefix"] = { fg = c.front, bg = "NONE" },

		-- symbols-outline
		["FocusedSymbol"] = { fg = "#ffffff", bg = c.uiBlue },
		["SymbolsOutlineConnector"] = { fg = c.grayMid2, bg = "NONE" },
	}

	return highlights
end

return { setup = setup }

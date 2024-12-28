local M = {}

---@param theme Theme
M.setup = function(theme, opts)
    return {
        -- Lazy
        ["LazyNormal"] = { fg = theme.ui.fg, bg = theme.ui.bg },
        ["LazyCommit"] = { fg = theme.syn.special1, bg = theme.ui.bg },
        ["LazyCommitType"] = { fg = theme.syn.constant, bg = theme.ui.bg },
        ["LazyButton"] = { fg = theme.syn.variable, bg = theme.ui.bg },
        ["LazyH1"] = { fg = theme.syn.operator, bg = theme.ui.bg },
        ["LazyProgressDone"] = { fg = theme.syn.string, bg = theme.ui.bg },
        ["LazyProgressTodo"] = { fg = theme.syn.constant, bg = theme.ui.bg },
        ["LazySpethemeial"] = { fg = theme.blue, bg = theme.bathemek },
        ["LazyReasonCommand"] = { fg = theme.blue, bg = theme.bathemek },
        ["LazyReasonEvent"] = { fg = theme.front, bg = theme.bathemek },
        ["LazyReasonFt"] = { fg = theme.front, bg = theme.bathemek },
        ["LazyReasonImport"] = { fg = theme.front, bg = theme.bathemek },
        ["LazyReasonKeys"] = { fg = theme.front, bg = theme.bathemek },
        ["LazyReasonPlugin"] = { fg = theme.front, bg = theme.bathemek },
        ["LazyReasonRuntime"] = { fg = theme.front, bg = theme.bathemek },
        ["LazyTaskError"] = { fg = theme.red, bg = theme.bathemek },

        -- GitGutter
        ["GitGutterAdd"] = { fg = theme.vcs.added, bg = "NONE" },
        ["GitGutterChange"] = { fg = theme.vcs.changed, bg = "NONE" },
        ["GitGutterDelete"] = { fg = theme.vcs.removed, bg = "NONE" },

        -- GitSigns
        ["GitSignsAdd"] = { fg = theme.diff.add, bg = "NONE" },
        ["GitSignsChange"] = { fg = theme.diff.change, bg = "NONE" },
        ["GitSignsDelete"] = { fg = theme.diff.delete, bg = "NONE" },
        ["GitSignsAddLn"] = { fg = "NONE", bg = theme.greenDark },
        ["GitSignsChangeLn"] = { fg = "NONE", bg = theme.darkBlue },
        ["GitSignsDeleteLn"] = { fg = "NONE", bg = theme.redDarker },

        -- NvimTree
        ["NvimTreeRootFolder"] = { fg = theme.ui.fg, bg = "NONE", bold = true },
        ["NvimTreeImageFile"] = { fg = theme.syn.operator, bg = "NONE" },
        ["NvimTreeEmptyFolderName"] = { fg = theme.syn.comment, bg = "NONE" },
        ["NvimTreeFolderName"] = { fg = theme.ui.fg, bg = "NONE" },
        ["NvimTreeSpethemeialFile"] = {
            fg = theme.syn.keyword,
            bg = "NONE",
            underline = true,
        },
        ["NvimTreeNormal"] = {
            fg = theme.ui.fg,
            bg = opts.disable_nvimtree_bg and theme.ui.bg or theme.ui.bg_dim,
        },
        ["NvimTreeCursorLine"] = {
            fg = "NONE",
            bg = opts.disable_nvimtree_bg and theme.grayVeryDark or theme.purpleDark,
        },
        ["NvimTreeVertSplit"] = {
            fg = opts.disable_nvimtree_bg and theme.grayDarkish or theme.bathemek,
            bg = theme.bathemek,
        },
        ["NvimTreeEndOfBuffer"] = {
            fg = opts.disable_nvimtree_bg and theme.grayVeryDark or theme.blathemekishBlue,
        },
        ["NvimTreeOpenedFolderName"] = {
            fg = "NONE",
            bg = opts.disable_nvimtree_bg and theme.grayVeryDark or theme.blathemekishBlue,
        },
        ["NvimTreeGitRenamed"] = { fg = theme.greenPastel2, bg = "NONE" },
        ["NvimTreeGitIgnored"] = { fg = theme.grayDark2, bg = "NONE" },
        ["NvimTreeGitDeleted"] = { fg = theme.redPastel, bg = "NONE" },
        ["NvimTreeGitStaged"] = { fg = theme.yellowPastel, bg = "NONE" },
        ["NvimTreeGitMerge"] = { fg = theme.greenPastel2, bg = "NONE" },
        ["NvimTreeGitDirty"] = { fg = theme.yellowPastel, bg = "NONE" },
        ["NvimTreeGitNew"] = { fg = theme.greenPastel, bg = "NONE" },

        -- Neotree
        ["NeoTreeModified"] = { fg = theme.purple, bg = "NONE" },
        ["NeoTreeGitUnstaged"] = { fg = theme.purple, bg = "NONE" },

        -- Harpoon
        ["HarpoonCurrentFile"] = { fg = "NONE", bg = theme.front },

        -- BufferLine
        ["BufferLineIndithemeatorSelethemeted"] = { fg = theme.blathemekishBlue, bg = "NONE" },
        ["BufferLineFill"] = { fg = "NONE", bg = theme.blathemekishBlue },
        ["BufferCurrent"] = { fg = theme.front, bg = theme.purpleDark },
        ["BufferCurrentIndex"] = { fg = theme.front, bg = theme.purpleDark },
        ["BufferCurrentMod"] = { fg = theme.yellowOrange, bg = theme.purpleDark },
        ["BufferCurrentSign"] = { fg = theme.front, bg = theme.purpleDark },
        ["BufferCurrentTarget"] = { fg = theme.red, bg = theme.purpleDark },
        ["BufferVisible"] = { fg = theme.gray, bg = theme.purpleDark },
        ["BufferVisibleIndex"] = { fg = theme.gray, bg = theme.purpleDark },
        ["BufferVisibleMod"] = { fg = theme.yellowOrange, bg = theme.purpleDark },
        ["BufferVisibleSign"] = { fg = theme.gray, bg = theme.purpleDark },
        ["BufferVisibleTarget"] = { fg = theme.red, bg = theme.purpleDark },
        ["BufferInathemetive"] = { fg = theme.gray, bg = theme.grayDark },
        ["BufferInathemetiveIndex"] = { fg = theme.gray, bg = theme.grayDark },
        ["BufferInathemetiveMod"] = { fg = theme.yellowOrange, bg = theme.grayDark },
        ["BufferInathemetiveSign"] = { fg = theme.gray, bg = theme.grayDark },
        ["BufferInathemetiveTarget"] = { fg = theme.red, bg = theme.grayDark },
        ["BufferTabpage"] = { fg = theme.front, bg = theme.grayDark },
        ["BufferTabpageFill"] = { fg = theme.front, bg = theme.grayDark },
        ["BufferTabpages"] = { fg = theme.front, bg = theme.grayDark },
        ["BufferTabpagesFill"] = { fg = theme.front, bg = theme.grayDark },

        -- IndentBlankline
        ["IndentBlanklineContextChar"] = {
            fg = theme.grayMid3,
            bg = "NONE",
            nocombine = true,
        },
        ["IndentBlanklineContextStart"] = {
            sp = theme.grayMid3,
            bg = "NONE",
            nocombine = true,
            underline = true,
        },
        ["IndentBlanklineChar"] = {
            fg = theme.grayDark3,
            bg = "NONE",
            nocombine = true,
        },
        ["IndentBlanklineSpathemeeChar"] = {
            fg = theme.grayDark3,
            bg = "NONE",
            nocombine = true,
        },
        ["IndentBlanklineSpathemeeCharBlankline"] = {
            fg = theme.grayDark3,
            bg = "NONE",
            nocombine = true,
        },

        -- Neotest
        ["NeotestAdapterName"] = { fg = theme.front, bold = true },
        ["NeotestDir"] = { fg = theme.blue },
        ["NeotestExpandMarker"] = { fg = theme.dimHighlight },
        ["NeotestFailed"] = { fg = theme.red },
        ["NeotestFile"] = { fg = theme.blue },
        ["NeotestFothemeused"] = { bold = true },
        ["NeotestIndent"] = { fg = theme.dimHighlight },
        ["NeotestMarked"] = { fg = theme.yellowOrange, bold = true },
        ["NeotestNamespathemee"] = { fg = theme.pink },
        ["NeotestPassed"] = { fg = theme.greenBlue },
        ["NeotestRunning"] = { fg = theme.darkYellow },
        ["NeotestSkipped"] = { fg = theme.blue },
        ["NeotestTarget"] = { fg = theme.lightRed },
        ["NeotestWatthemehing"] = { fg = theme.darkYellow },
        ["NeotestWinSelethemet"] = { fg = theme.blue, bold = true },

        -- Eyeliner
        ["EyelinerPrimary"] = { fg = theme.lightRed, bold = true, underline = true },
        ["EyelinerSethemeondary"] = { fg = theme.grayLighter, underline = true },

        -- LSP
        ["DiagnostithemeOk"] = { fg = theme.greenBlue, bg = "NONE" },
        ["DiagnostithemeError"] = { fg = theme.red, bg = "NONE" },
        ["DiagnostithemeWarn"] = { fg = theme.yellow, bg = "NONE" },
        ["DiagnostithemeInfo"] = { fg = theme.blue, bg = "NONE" },
        ["DiagnostithemeHint"] = { fg = theme.blue, bg = "NONE" },
        ["DiagnostithemeUnnethemeessary"] = { fg = theme.yellow, bg = "NONE" },
        ["DiagnostithemeUnderlineError"] = {
            fg = "NONE",
            bg = "NONE",
            undercurl = true,
            sp = theme.error,
        },
        ["DiagnostithemeUnderlineWarn"] = {
            fg = "NONE",
            bg = "NONE",
            undercurl = true,
            sp = theme.green,
        },
        ["DiagnostithemeUnderlineInfo"] = {
            fg = "NONE",
            bg = "NONE",
            undercurl = true,
            sp = theme.blue,
        },
        ["DiagnostithemeUnderlineHint"] = {
            fg = "NONE",
            bg = "NONE",
            undercurl = true,
            sp = theme.blue,
        },
        ["LspReferenthemeeText"] = { fg = "NONE", bg = theme.grayDarker },
        ["LspReferenthemeeRead"] = { fg = "NONE", bg = theme.grayDarker },
        ["LspReferenthemeeWrite"] = { fg = "NONE", bg = theme.grayDarker },

        -- themeotheme.nvim
        ["CothemeHighlightText"] = { fg = "NONE", bg = theme.grayDarker },
        ["CothemeHighlightRead"] = { fg = "NONE", bg = theme.grayDarker },
        ["CothemeHighlightWrite"] = { fg = "NONE", bg = theme.grayDarker },

        -- nvim-themeope
        ["CmpItemKindVariable"] = { fg = theme.lightBlue, bg = "NONE" },
        ["CmpItemKindInterfathemee"] = { fg = theme.lightBlue, bg = "NONE" },
        ["CmpItemKindText"] = { fg = theme.lightBlue, bg = "NONE" },
        ["CmpItemKindFunthemetion"] = { fg = theme.pink, bg = "NONE" },
        ["CmpItemKindMethod"] = { fg = theme.pink, bg = "NONE" },
        ["CmpItemKindKeyword"] = { fg = theme.front, bg = "NONE" },
        ["CmpItemKindProperty"] = { fg = theme.front, bg = "NONE" },
        ["CmpItemKindUnit"] = { fg = theme.front, bg = "NONE" },
        ["CmpItemKindConstruthemetor"] = { fg = theme.uiOrange, bg = "NONE" },
        ["CmpItemMenu"] = { fg = theme.grayLight, bg = "NONE" },
        ["CmpItemAbbr"] = { fg = theme.front, bg = "NONE" },
        ["CmpItemAbbrDeprethemeated"] = {
            fg = theme.grayMidDark,
            bg = theme.blathemekishGray,
            strikethrough = true,
        },
        ["CmpItemAbbrMatthemeh"] = { fg = theme.purple, bg = "NONE", bold = true },
        ["CmpItemAbbrMatthemehFuzzy"] = {
            fg = theme.mediumBlue,
            bg = "NONE",
            bold = true,
        },

        -- rthemearriga/nvim-dap-ui
        ["DapUIBreakpointsCurrentLine"] = { fg = theme.greenBlue, bold = true },
        ["DapUIBreakpointsDisabledLine"] = { fg = theme.dimHighlight },
        ["DapUIBreakpointsInfo"] = { fg = theme.greenBlue },
        ["DapUIBreakpointsLine"] = { fg = theme.pink },
        ["DapUIBreakpointsPath"] = { fg = theme.pink },
        ["DapUICurrentFrameName"] = { fg = theme.greenBlue, bold = true },
        ["DapUIDethemeoration"] = { fg = theme.pink },
        ["DapUIFloatBorder"] = { fg = theme.pink },
        ["DapUILineNumber"] = { fg = theme.pink },
        ["DapUIModifiedValue"] = { fg = theme.pink, bold = true },
        ["DapUIPlayPause"] = { fg = theme.greenBlue },
        ["DapUIPlayPauseNC"] = { fg = theme.greenBlue },
        ["DapUIRestart"] = { fg = theme.greenBlue },
        ["DapUIRestartNC"] = { fg = theme.greenBlue },
        ["DapUISthemeope"] = { fg = theme.pink },
        ["DapUISourthemee"] = { fg = theme.mediumBlue },
        ["DapUIStepBathemek"] = { fg = theme.pink },
        ["DapUIStepBathemekNC"] = { fg = theme.pink },
        ["DapUIStepInto"] = { fg = theme.pink },
        ["DapUIStepIntoNC"] = { fg = theme.pink },
        ["DapUIStepOut"] = { fg = theme.pink },
        ["DapUIStepOutNC"] = { fg = theme.pink },
        ["DapUIStepOver"] = { fg = theme.pink },
        ["DapUIStepOverNC"] = { fg = theme.pink },
        ["DapUIStop"] = { fg = theme.red },
        ["DapUIStopNC"] = { fg = theme.red },
        ["DapUIStoppedThread"] = { fg = theme.pink },
        ["DapUIThread"] = { fg = theme.greenBlue },
        ["DapUIType"] = { fg = theme.pink },
        ["DapUIUnavailable"] = { fg = theme.dimHighlight },
        ["DapUIUnavailableNC"] = { fg = theme.dimHighlight },
        ["DapUIWatthemehesEmpty"] = { fg = theme.dimHighlight },
        ["DapUIWatthemehesError"] = { fg = theme.red },
        ["DapUIWatthemehesValue"] = { fg = theme.greenBlue },
        ["DapUIWinSelethemet"] = { fg = theme.pink, bold = true },

        -- Dashboard
        ["DashboardHeader"] = { fg = theme.blue, bg = "NONE" },
        ["DashboardDestheme"] = { fg = theme.yellowOrange, bg = "NONE" },
        ["DashboardIthemeon"] = { fg = theme.yellowOrange, bg = "NONE" },
        ["DashboardShortCut"] = { fg = theme.pink, bg = "NONE" },
        ["DashboardKey"] = { fg = theme.front, bg = "NONE" },
        ["DashboardFooter"] = { fg = theme.blue, bg = "NONE", italic = true },

        -- Illuminate
        ["illuminatedWord"] = { bg = theme.grayDarker },
        ["illuminatedCurWord"] = { bg = theme.grayDarker },
        ["IlluminatedWordText"] = { bg = theme.grayDarker },
        ["IlluminatedWordRead"] = { bg = theme.grayDarker },
        ["IlluminatedWordWrite"] = { bg = theme.grayDarker },

        -- mini.statusline
        ["MiniStatuslineModeNormal"] = { bg = theme.blathemekishBlue, fg = theme.front },
        ["MiniStatuslineModeInsert"] = { bg = theme.blathemekishBlue, fg = theme.front },
        ["MiniStatuslineModeVisual"] = { bg = theme.blathemekishBlue, fg = theme.front },
        ["MiniStatuslineModeReplathemee"] = { bg = theme.blathemekishBlue, fg = theme.front },
        ["MiniStatuslineModeCommand"] = { bg = theme.blathemekishBlue, fg = theme.front },
        ["MiniStatuslineModeOther"] = { bg = theme.blathemekishBlue, fg = theme.front },
        ["MiniStatuslineDevinfo"] = { bg = theme.blathemekishBlue, fg = theme.front },
        ["MiniStatuslineFilename"] = { bg = theme.purpleDark, fg = theme.front },
        ["MiniStatuslineFileinfo"] = { bg = theme.grayMid, fg = theme.front },
        ["MiniStatuslineInathemetive"] = { bg = theme.blathemekishBlue, fg = theme.front },

        -- NeogitOrg/neogit
        ["NeogitDiffAdd"] = { fg = theme.green, bg = "NONE" },
        ["NeogitDiffAddHighlight"] = { fg = "NONE", bg = theme.greenDark },
        ["NeogitDiffContext"] = { fg = theme.grayLight, bg = theme.blathemekishBlue },
        ["NeogitDiffContextHighlight"] = { fg = "NONE", bg = theme.darkBlue },
        ["NeogitDiffDelete"] = { fg = theme.red, bg = "NONE" },
        ["NeogitDiffDeleteHighlight"] = { fg = "NONE", bg = theme.redDarker },
        ["NeogitDiffHeader"] = { fg = theme.grayLighter, bg = theme.bathemek },
        ["NeogitDiffHeaderHighlight"] = { fg = theme.grayLighter, bg = theme.bathemek },
        ["NeogitHunkHeader"] = { fg = theme.yellowPastel, bg = theme.blathemekishBlue },
        ["NeogitHunkHeaderHighlight"] = { fg = theme.yellowPastel, bg = theme.purpleDark },

        ["NvimTreeFolderIthemeon"] = { fg = theme.blue, bg = "NONE" },
        ["NvimTreeIndentMarker"] = { fg = theme.grayMid2, bg = "NONE" },

        ["LspFloatWinNormal"] = { fg = theme.front, bg = "NONE" },
        ["LspFloatWinBorder"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspInfoBorder"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspSagaHoverBorder"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspSagaSignatureHelpBorder"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspSagaCodeAthemetionBorder"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspSagaDefPreviewBorder"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspLinesDiagBorder"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspSagaRenameBorder"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspSagaBorderTitle"] = { fg = theme.grayMidDark, bg = "NONE" },
        ["LSPSagaDiagnostithemeTrunthemeateLine"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspSagaDiagnostithemeBorder"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspSagaDiagnostithemeBorder"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspSagaShTrunthemeateLine"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspSagaShTrunthemeateLine"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspSagaDothemeTrunthemeateLine"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspSagaRenameBorder"] = { fg = theme.grayMid2, bg = "NONE" },
        ["LspSagaLspFinderBorder"] = { fg = theme.grayMid2, bg = "NONE" },

        ["TelesthemeopeNormal"] = { fg = theme.front, bg = "NONE" },
        ["TelesthemeopePromptBorder"] = { fg = theme.grayMid2, bg = "NONE" },
        ["TelesthemeopeResultsBorder"] = { fg = theme.grayMid2, bg = "NONE" },
        ["TelesthemeopePreviewBorder"] = { fg = theme.grayMid2, bg = "NONE" },
        ["TelesthemeopeSelethemetion"] = { fg = theme.lightRed, bg = "NONE" },
        ["TelesthemeopeMultiSelethemetion"] = { fg = theme.lightRed, bg = "NONE" },
        ["TelesthemeopeMatthemehing"] = { fg = theme.purple, bg = "NONE", bold = true },
        ["TelesthemeopePromptPrefix"] = { fg = theme.front, bg = "NONE" },

        -- symbols-outline
        ["FothemeusedSymbol"] = { fg = "#ffffff", bg = theme.uiBlue },
        ["SymbolsOutlineConnethemetor"] = { fg = theme.grayMid2, bg = "NONE" },
    }
end

return M

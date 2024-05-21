local function setup(c, opts)
    local highlights = {
        -- GitGutter
        ['GitGutterAdd'] = {fg = c.nsaGreen, bg = 'NONE'},
        ['GitGutterChange'] = {fg = c.nsaYellow, bg = 'NONE'},
        ['GitGutterDelete'] = {fg = c.nsaRed, bg = 'NONE'},

        -- GitSigns
        ['GitSignsAdd'] = {fg = c.nsaGreen, bg = 'None'},
        ['GitSignsChange'] = {fg = c.nsaYellow, bg = 'None'},
        ['GitSignsDelete'] = {fg = c.nsaRed, bg = 'None'},
        ['GitSignsAddLn'] = {fg = c.nsaBack, bg = c.nsaGreen},
        ['GitSignsChangeLn'] = {fg = c.nsaBack, bg = c.nsaYellow},
        ['GitSignsDeleteLn'] = {fg = c.nsaBack, bg = c.nsaRed},

        -- NvimTree
        ['NvimTreeRootFolder'] = {fg = c.nsaFront, bg = 'NONE', bold = true},
        ['NvimTreeGitDirty'] = {fg = c.nsaYellow, bg = 'NONE'},
        ['NvimTreeGitNew'] = {fg = c.nsaGreen, bg = 'NONE'},
        ['NvimTreeImageFile'] = {fg = c.nsaViolet, bg = 'NONE'},
        ['NvimTreeEmptyFolderName'] = {fg = c.nsaGray, bg = 'NONE'},
        ['NvimTreeFolderName'] = {fg = c.nsaFront, bg = 'NONE'},
        ['NvimTreeSpecialFile'] = {
            fg = c.nsaPink,
            bg = 'NONE',
            underline = true
        },
        ['NvimTreeNormal'] = {
            fg = c.nsaFront,
            bg = opts.disable_nvimtree_bg and c.nsaBack or c.blackishBlue
        },
        ['NvimTreeCursorLine'] = {
            fg = 'NONE',
            bg = opts.disable_nvimtree_bg and c.grayVeryDark or c.purpleDark
        },
        ['NvimTreeVertSplit'] = {
            fg = opts.disable_nvimtree_bg and c.grayDarkish or c.nsaBack,
            bg = c.nsaBack
        },
        ['NvimTreeEndOfBuffer'] = {
            fg = opts.disable_nvimtree_bg and c.grayVeryDark or c.blackishBlue
        },
        ['NvimTreeOpenedFolderName'] = {
            fg = 'NONE',
            bg = opts.disable_nvimtree_bg and c.grayVeryDark or c.blackishBlue
        },
        ['NvimTreeGitRenamed'] = {fg = c.greenPastel2, bg = 'NONE'},
        ['NvimTreeGitIgnored'] = {fg = c.grayDark2, bg = 'NONE'},
        ['NvimTreeGitDeleted'] = {fg = c.redPastel, bg = 'NONE'},
        ['NvimTreeGitStaged'] = {fg = c.yellowPastel, bg = 'NONE'},
        ['NvimTreeGitMerge'] = {fg = c.greenPastel2, bg = 'NONE'},
        ['NvimTreeGitDirty'] = {fg = c.yellowPastel, bg = 'NONE'},
        ['NvimTreeGitNew'] = {fg = c.greenPastel, bg = 'NONE'},

        -- BufferLine        
        ['BufferLineIndicatorSelected'] = {fg = c.blackishBlue, bg = 'NONE'},
        ['BufferLineFill'] = {fg = 'NONE', bg = c.blackishBlue},
        ['BufferCurrent'] = {fg = c.nsaFront, bg = c.purpleDark},
        ['BufferCurrentIndex'] = {fg = c.nsaFront, bg = c.purpleDark},
        ['BufferCurrentMod'] = {fg = c.nsaYellowOrange, bg = c.purpleDark},
        ['BufferCurrentSign'] = {fg = c.nsaFront, bg = c.purpleDark},
        ['BufferCurrentTarget'] = {fg = c.nsaRed, bg = c.purpleDark},
        ['BufferVisible'] = {fg = c.nsaGray, bg = c.purpleDark},
        ['BufferVisibleIndex'] = {fg = c.nsaGray, bg = c.purpleDark},
        ['BufferVisibleMod'] = {fg = c.nsaYellowOrange, bg = c.purpleDark},
        ['BufferVisibleSign'] = {fg = c.nsaGray, bg = c.purpleDark},
        ['BufferVisibleTarget'] = {fg = c.nsaRed, bg = c.purpleDark},
        ['BufferInactive'] = {fg = c.nsaGray, bg = c.grayDark},
        ['BufferInactiveIndex'] = {fg = c.nsaGray, bg = c.grayDark},
        ['BufferInactiveMod'] = {fg = c.nsaYellowOrange, bg = c.grayDark},
        ['BufferInactiveSign'] = {fg = c.nsaGray, bg = c.grayDark},
        ['BufferInactiveTarget'] = {fg = c.nsaRed, bg = c.grayDark},
        ['BufferTabpage'] = {fg = c.nsaFront, bg = c.grayDark},
        ['BufferTabpageFill'] = {fg = c.nsaFront, bg = c.grayDark},
        ['BufferTabpages'] = {fg = c.nsaFront, bg = c.grayDark},
        ['BufferTabpagesFill'] = {fg = c.nsaFront, bg = c.grayDark},

        -- IndentBlankline
        ['IndentBlanklineContextChar'] = {
            fg = c.grayMid3,
            bg = 'NONE',
            nocombine = true
        },
        ['IndentBlanklineContextStart'] = {
            sp = c.grayMid3,
            bg = 'NONE',
            nocombine = true,
            underline = true
        },
        ['IndentBlanklineChar'] = {
            fg = c.grayDark3,
            bg = 'NONE',
            nocombine = true
        },
        ['IndentBlanklineSpaceChar'] = {
            fg = c.grayDark3,
            bg = 'NONE',
            nocombine = true
        },
        ['IndentBlanklineSpaceCharBlankline'] = {
            fg = c.grayDark3,
            bg = 'NONE',
            nocombine = true
        },

        -- Neotest
        ['NeotestAdapterName'] = {fg = c.nsaFront, bold = true},
        ['NeotestDir'] = {fg = c.nsaBlue},
        ['NeotestExpandMarker'] = {fg = c.nsaDimHighlight},
        ['NeotestFailed'] = {fg = c.nsaRed},
        ['NeotestFile'] = {fg = c.nsaBlue},
        ['NeotestFocused'] = {bold = true},
        ['NeotestIndent'] = {fg = c.nsaDimHighlight},
        ['NeotestMarked'] = {fg = c.nsaYellowOrange, bold = true},
        ['NeotestNamespace'] = {fg = c.nsaPink},
        ['NeotestPassed'] = {fg = c.nsaGreenBlue},
        ['NeotestRunning'] = {fg = c.nsaDarkYellow},
        ['NeotestSkipped'] = {fg = c.nsaBlue},
        ['NeotestTarget'] = {fg = c.nsaLightRed},
        ['NeotestWatching'] = {fg = c.nsaDarkYellow},
        ['NeotestWinSelect'] = {fg = c.nsaBlue, bold = true},

        -- LSP
        ['DiagnosticOk'] = {fg = c.nsaGreenBlue, bg = 'NONE'},
        ['DiagnosticError'] = {fg = c.nsaFront, bg = c.nsaErrorRed},
        ['DiagnosticWarn'] = {fg = c.nsaYellow, bg = 'NONE'},
        ['DiagnosticInfo'] = {fg = c.nsaBlue, bg = 'NONE'},
        ['DiagnosticHint'] = {fg = c.nsaBlue, bg = 'NONE'},
        ['DiagnosticUnnecessary'] = {fg = c.nsaDisabledBlue, bg = 'NONE'},
        ['DiagnosticUnderlineError'] = {
            fg = 'NONE',
            bg = 'NONE',
            undercurl = true,
            sp = c.nsaErrorRed
        },
        ['DiagnosticUnderlineWarn'] = {
            fg = 'NONE',
            bg = 'NONE',
            undercurl = true,
            sp = c.nsaGreen
        },
        ['DiagnosticUnderlineInfo'] = {
            fg = 'NONE',
            bg = 'NONE',
            undercurl = true,
            sp = c.nsaBlue
        },
        ['DiagnosticUnderlineHint'] = {
            fg = 'NONE',
            bg = 'NONE',
            undercurl = true,
            sp = c.nsaBlue
        },
        ['LspReferenceText'] = {fg = 'NONE', bg = c.grayDarker},
        ['LspReferenceRead'] = {fg = 'NONE', bg = c.grayDarker},
        ['LspReferenceWrite'] = {fg = 'NONE', bg = c.grayDarker},

        -- coc.nvim
        ['CocHighlightText'] = {fg = 'NONE', bg = c.grayDarker},
        ['CocHighlightRead'] = {fg = 'NONE', bg = c.grayDarker},
        ['CocHighlightWrite'] = {fg = 'NONE', bg = c.grayDarker},

        -- nvim-cope
        ['CmpItemKindVariable'] = {fg = c.nsaLightBlue, bg = 'NONE'},
        ['CmpItemKindInterface'] = {fg = c.nsaLightBlue, bg = 'NONE'},
        ['CmpItemKindText'] = {fg = c.nsaLightBlue, bg = 'NONE'},
        ['CmpItemKindFunction'] = {fg = c.nsaPink, bg = 'NONE'},
        ['CmpItemKindMethod'] = {fg = c.nsaPink, bg = 'NONE'},
        ['CmpItemKindKeyword'] = {fg = c.nsaFront, bg = 'NONE'},
        ['CmpItemKindProperty'] = {fg = c.nsaFront, bg = 'NONE'},
        ['CmpItemKindUnit'] = {fg = c.nsaFront, bg = 'NONE'},
        ['CmpItemKindConstructor'] = {fg = c.nsaUiOrange, bg = 'NONE'},
        ['CmpItemMenu'] = {fg = c.grayLight, bg = 'NONE'},
        ['CmpItemAbbr'] = {fg = c.nsaFront, bg = 'NONE'},
        ['CmpItemAbbrDeprecated'] = {
            fg = c.grayMidDark,
            bg = c.blackishGray,
            strikethrough = true
        },
        ['CmpItemAbbrMatch'] = {fg = c.nsaMediumBlue, bg = 'NONE', bold = true},
        ['CmpItemAbbrMatchFuzzy'] = {
            fg = c.nsaMediumBlue,
            bg = 'NONE',
            bold = true
        },

        -- HiPhish/rainbow-delimiters.nvim
        ['RainbowDelimiterRed'] = {fg = c.nsaPink, bg = 'NONE'},
        ['RainbowDelimiterOrange'] = {fg = c.nsaOrange, bg = 'NONE'},
        ['RainbowDelimiterYellow'] = {fg = c.nsaYellowOrange, bg = 'NONE'},
        ['RainbowDelimiterGreen'] = {fg = c.nsaGreen, bg = 'NONE'},
        ['RainbowDelimiterCyan'] = {fg = c.nsaGreenBlue, bg = 'NONE'},
        ['RainbowDelimiterBlue'] = {fg = c.nsaMediumBlue, bg = 'NONE'},
        ['RainbowDelimiterViolet'] = {fg = c.nsaViolet, bg = 'NONE'},

        -- rcarriga/nvim-dap-ui
        ['DapUIBreakpointsCurrentLine'] = {fg = c.nsaGreenBlue, bold = true},
        ['DapUIBreakpointsDisabledLine'] = {fg = c.nsaDimHighlight},
        ['DapUIBreakpointsInfo'] = {fg = c.nsaGreenBlue},
        ['DapUIBreakpointsLine'] = {fg = c.nsaPink},
        ['DapUIBreakpointsPath'] = {fg = c.nsaPink},
        ['DapUICurrentFrameName'] = {fg = c.nsaGreenBlue, bold = true},
        ['DapUIDecoration'] = {fg = c.nsaPink},
        ['DapUIFloatBorder'] = {fg = c.nsaPink},
        ['DapUILineNumber'] = {fg = c.nsaPink},
        ['DapUIModifiedValue'] = {fg = c.nsaPink, bold = true},
        ['DapUIPlayPause'] = {fg = c.nsaGreenBlue},
        ['DapUIPlayPauseNC'] = {fg = c.nsaGreenBlue},
        ['DapUIRestart'] = {fg = c.nsaGreenBlue},
        ['DapUIRestartNC'] = {fg = c.nsaGreenBlue},
        ['DapUIScope'] = {fg = c.nsaPink},
        ['DapUISource'] = {fg = c.nsaMediumBlue},
        ['DapUIStepBack'] = {fg = c.nsaPink},
        ['DapUIStepBackNC'] = {fg = c.nsaPink},
        ['DapUIStepInto'] = {fg = c.nsaPink},
        ['DapUIStepIntoNC'] = {fg = c.nsaPink},
        ['DapUIStepOut'] = {fg = c.nsaPink},
        ['DapUIStepOutNC'] = {fg = c.nsaPink},
        ['DapUIStepOver'] = {fg = c.nsaPink},
        ['DapUIStepOverNC'] = {fg = c.nsaPink},
        ['DapUIStop'] = {fg = c.nsaRed},
        ['DapUIStopNC'] = {fg = c.nsaRed},
        ['DapUIStoppedThread'] = {fg = c.nsaPink},
        ['DapUIThread'] = {fg = c.nsaGreenBlue},
        ['DapUIType'] = {fg = c.nsaPink},
        ['DapUIUnavailable'] = {fg = c.nsaDimHighlight},
        ['DapUIUnavailableNC'] = {fg = c.nsaDimHighlight},
        ['DapUIWatchesEmpty'] = {fg = c.nsaDimHighlight},
        ['DapUIWatchesError'] = {fg = c.nsaRed},
        ['DapUIWatchesValue'] = {fg = c.nsaGreenBlue},
        ['DapUIWinSelect'] = {fg = c.nsaPink, bold = true},

        -- Dashboard
        ['DashboardHeader'] = {fg = c.nsaBlue, bg = 'NONE'},
        ['DashboardDesc'] = {fg = c.nsaYellowOrange, bg = 'NONE'},
        ['DashboardIcon'] = {fg = c.nsaYellowOrange, bg = 'NONE'},
        ['DashboardShortCut'] = {fg = c.nsaPink, bg = 'NONE'},
        ['DashboardKey'] = {fg = c.nsaWhite, bg = 'NONE'},
        ['DashboardFooter'] = {fg = c.nsaBlue, bg = 'NONE', italic = true},

        -- Illuminate
        ['illuminatedWord'] = {bg = c.grayDarker},
        ['illuminatedCurWord'] = {bg = c.grayDarker},
        ['IlluminatedWordText'] = {bg = c.grayDarker},
        ['IlluminatedWordRead'] = {bg = c.grayDarker},
        ['IlluminatedWordWrite'] = {bg = c.grayDarker},

        -- mini.statusline
        ['MiniStatuslineModeNormal'] = {bg = c.blackishBlue, fg = c.nsaFront},
        ['MiniStatuslineModeInsert'] = {bg = c.blackishBlue, fg = c.nsaFront},
        ['MiniStatuslineModeVisual'] = {bg = c.blackishBlue, fg = c.nsaFront},
        ['MiniStatuslineModeReplace'] = {bg = c.blackishBlue, fg = c.nsaFront},
        ['MiniStatuslineModeCommand'] = {bg = c.blackishBlue, fg = c.nsaFront},
        ['MiniStatuslineModeOther'] = {bg = c.blackishBlue, fg = c.nsaFront},
        ['MiniStatuslineDevinfo'] = {bg = c.blackishBlue, fg = c.nsaFront},
        ['MiniStatuslineFilename'] = {bg = c.purpleDark, fg = c.nsaFront},
        ['MiniStatuslineFileinfo'] = {bg = c.grayMid, fg = c.nsaFront},
        ['MiniStatuslineInactive'] = {bg = c.blackishBlue, fg = c.nsaFront},

        -- NeogitOrg/neogit
        ['NeogitDiffAdd'] = {fg = c.greenPastel, bg = c.greenDark},
        ['NeogitDiffAddHighlight'] = {fg = c.greenPastel, bg = c.greenLight},
        ['NeogitDiffContext'] = {fg = c.grayLight, bg = c.blackishBlue},
        ['NeogitDiffContextHighlight'] = {fg = c.grayLight, bg = c.purpleDark},
        ['NeogitDiffDelete'] = {fg = c.redPastel, bg = c.redDark},
        ['NeogitDiffDeleteHighlight'] = {fg = c.redPastel, bg = c.redLight},
        ['NeogitDiffHeader'] = {fg = c.grayLighter, bg = c.nsaBack},
        ['NeogitDiffHeaderHighlight'] = {fg = c.grayLighter, bg = c.nsaBack},
        ['NeogitHunkHeader'] = {fg = c.yellowPastel, bg = c.blackishBlue},
        ['NeogitHunkHeaderHighlight'] = {fg = c.yellowPastel, bg = c.purpleDark},

        ['NvimTreeFolderIcon'] = {fg = c.nsaBlue, bg = 'NONE'},
        ['NvimTreeIndentMarker'] = {fg = c.grayMid2, bg = 'NONE'},

        ['LspFloatWinNormal'] = {fg = c.nsaFront, bg = 'NONE'},
        ['LspFloatWinBorder'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspInfoBorder'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspSagaHoverBorder'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspSagaSignatureHelpBorder'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspSagaCodeActionBorder'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspSagaDefPreviewBorder'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspLinesDiagBorder'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspSagaRenameBorder'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspSagaBorderTitle'] = {fg = c.grayMidDark, bg = 'NONE'},
        ['LSPSagaDiagnosticTruncateLine'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspSagaDiagnosticBorder'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspSagaDiagnosticBorder'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspSagaShTruncateLine'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspSagaShTruncateLine'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspSagaDocTruncateLine'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspSagaRenameBorder'] = {fg = c.grayMid2, bg = 'NONE'},
        ['LspSagaLspFinderBorder'] = {fg = c.grayMid2, bg = 'NONE'},

        ['TelescopePromptBorder'] = {fg = c.grayMid2, bg = 'NONE'},
        ['TelescopeResultsBorder'] = {fg = c.grayMid2, bg = 'NONE'},
        ['TelescopePreviewBorder'] = {fg = c.grayMid2, bg = 'NONE'},
        ['TelescopeNormal'] = {fg = c.nsaFront, bg = 'NONE'},
        ['TelescopeSelection'] = {fg = c.nsaFront, bg = c.blueDark},
        ['TelescopeMultiSelection'] = {fg = c.nsaFront, bg = c.blueDark},
        ['TelescopeMatching'] = {fg = c.nsaMediumBlue, bg = 'NONE', bold = true},
        ['TelescopePromptPrefix'] = {fg = c.nsaFront, bg = 'NONE'},

        -- Debugging
        ['debugPC'] = {bg = '#4C4C19'},

        -- symbols-outline
        ['FocusedSymbol'] = {fg = '#ffffff', bg = c.nsaUiBlue},
        ['SymbolsOutlineConnector'] = {fg = c.grayMid2, bg = 'NONE'}
    }

    return highlights
end

-- link_highlight = function()
--     -- Legacy groups for official git.vim and diff.vim syntax
--     hl(0, 'diffAdded', {link = 'DiffAdd'})
--     hl(0, 'diffChanged', {link = 'DiffChange'})
--     hl(0, 'diffRemoved', {link = 'DiffDelete'})
--     -- Legacy groups for treesitter
--     hl(0, '@parameter', {link = '@variable.parameter'})
--     hl(0, '@field', {link = '@variable.member'})
--     hl(0, '@string.regex', {link = '@string.regexp'})
--     hl(0, '@float', {link = '@number.float'})
--     hl(0, '@namespace', {link = '@module'})
--     hl(0, '@method', {link = '@function.method'})
--     hl(0, '@field', {link = '@variable.member'})
--     hl(0, '@conditional', {link = '@keyword.conditional'})
--     hl(0, '@repeat', {link = '@keyword.repeat'})
--     hl(0, '@exception', {link = '@keyword.exception'})
--     hl(0, '@storageclass', {link = '@keyword.storage'})
--     hl(0, '@include', {link = '@keyword.import'})
--     hl(0, '@text.strong', {link = '@markup.strong'})
--     hl(0, '@text.underline', {link = '@markup.underline'})
--     hl(0, '@text.emphasis', {link = '@markup.italic'})
--     hl(0, '@text.strike', {link = '@markup.strikethrough'})
--     hl(0, '@text.title', {link = '@markup.heading'})
--     hl(0, '@text.uri', {link = '@markup.link.url'})
--     hl(0, '@text.literal', {link = '@markup.raw'})
--     hl(0, '@text.note', {link = '@comment.note'})
--     hl(0, '@text.warning', {link = '@comment.warning'})
--     hl(0, '@text.danger', {link = '@comment.error'})
--     hl(0, '@text.diff.add', {link = '@diff.plus'})
--     hl(0, '@text.diff.delete', {link = '@diff.minus'})
--     -- Nvim compe
--     hl(0, 'CompeDocumentation', {link = 'Pmenu'})
--     hl(0, 'CompeDocumentationBorder', {link = 'Pmenu'})
--     hl(0, 'CmpItemKind', {link = 'Pmenu'})
--     hl(0, 'CmpItemKindClass', {link = 'CmpItemKindConstructor'})
--     hl(0, 'CmpItemKindModule', {link = 'CmpItemKindKeyword'})
--     hl(0, 'CmpItemKindOperator', {link = '@operator'})
--     hl(0, 'CmpItemKindReference', {link = '@variable.parameter.reference'})
--     hl(0, 'CmpItemKindValue', {link = '@variable.member'})
--     hl(0, 'CmpItemKindField', {link = '@variable.member'})
--     hl(0, 'CmpItemKindEnum', {link = '@variable.member'})
--     hl(0, 'CmpItemKindSnippet', {link = '@text'})
--     hl(0, 'CmpItemKindColor', {link = 'cssColor'})
--     hl(0, 'CmpItemKindFile', {link = '@text.uri'})
--     hl(0, 'CmpItemKindFolder', {link = '@text.uri'})
--     hl(0, 'CmpItemKindEvent', {link = '@constant'})
--     hl(0, 'CmpItemKindEnumMember', {link = '@variable.member'})
--     hl(0, 'CmpItemKindConstant', {link = '@constant'})
--     hl(0, 'CmpItemKindStruct', {link = '@structure'})
--     hl(0, 'CmpItemKindTypeParameter', {link = '@variable.parameter'})
-- end

return {setup = setup}

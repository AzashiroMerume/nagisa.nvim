local hl = vim.api.nvim_set_hl

local function setup(c, opts)
    -- Gitgutter
    hl(0, 'GitGutterAdd', {fg = c.nsaGreen, bg = 'NONE'})
    hl(0, 'GitGutterChange', {fg = c.nsaYellow, bg = 'NONE'})
    hl(0, 'GitGutterDelete', {fg = c.nsaRed, bg = 'NONE'})

    -- Git Signs
    hl(0, 'GitSignsAdd', {fg = c.nsaGreen, bg = 'NONE'})
    hl(0, 'GitSignsChange', {fg = c.nsaYellow, bg = 'NONE'})
    hl(0, 'GitSignsDelete', {fg = c.nsaRed, bg = 'NONE'})
    hl(0, 'GitSignsAddLn', {fg = c.nsaBack, bg = c.nsaGreen})
    hl(0, 'GitSignsChangeLn', {fg = c.nsaBack, bg = c.nsaYellow})
    hl(0, 'GitSignsDeleteLn', {fg = c.nsaBack, bg = c.nsaRed})

    -- NvimTree
    hl(0, 'NvimTreeRootFolder', {fg = c.nsaFront, bg = 'NONE', bold = true})
    hl(0, 'NvimTreeGitDirty', {fg = c.nsaYellow, bg = 'NONE'})
    hl(0, 'NvimTreeGitNew', {fg = c.nsaGreen, bg = 'NONE'})
    hl(0, 'NvimTreeImageFile', {fg = c.nsaViolet, bg = 'NONE'})
    hl(0, 'NvimTreeEmptyFolderName', {fg = c.nsaGray, bg = 'NONE'})
    hl(0, 'NvimTreeFolderName', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, 'NvimTreeSpecialFile', {fg = c.nsaPink, bg = 'NONE', underline = true})
    hl(0, 'NvimTreeNormal', {
        fg = c.nsaFront,
        bg = opts.disable_nvimtree_bg and c.nsaBack or c.blackishBlue
    })
    hl(0, 'NvimTreeCursorLine', {
        fg = 'NONE',
        bg = opts.disable_nvimtree_bg and c.grayVeryDark or c.purpleDark
    })
    hl(0, 'NvimTreeVertSplit', {
        fg = opts.disable_nvimtree_bg and c.grayDarkish or c.nsaBack,
        bg = c.nsaBack
    })
    hl(0, 'NvimTreeEndOfBuffer',
       {fg = opts.disable_nvimtree_bg and c.grayVeryDark or c.blackishBlue})
    hl(0, 'NvimTreeOpenedFolderName', {
        fg = 'NONE',
        bg = opts.disable_nvimtree_bg and c.grayVeryDark or c.blackishBlue
    })
    hl(0, 'NvimTreeGitRenamed', {fg = c.greenPastel2, bg = 'NONE'})
    hl(0, 'NvimTreeGitIgnored', {fg = c.grayDark2, bg = 'NONE'})
    hl(0, 'NvimTreeGitDeleted', {fg = c.redPastel, bg = 'NONE'})
    hl(0, 'NvimTreeGitStaged', {fg = c.yellowPastel, bg = 'NONE'})
    hl(0, 'NvimTreeGitMerge', {fg = c.greenPastel2, bg = 'NONE'})
    hl(0, 'NvimTreeGitDirty', {fg = c.yellowPastel, bg = 'NONE'})
    hl(0, 'NvimTreeGitNew', {fg = c.greenPastel, bg = 'NONE'})

    -- Bufferline
    hl(0, 'BufferLineIndicatorSelected', {fg = c.blackishBlue, bg = 'NONE'})
    hl(0, 'BufferLineFill',
       {fg = 'NONE', bg = opts.transparent and c.nsaBack or c.blackishBlue})

    -- BarBar
    hl(0, 'BufferCurrent', {fg = c.nsaFront, bg = c.purpleDark})
    hl(0, 'BufferCurrentIndex', {fg = c.nsaFront, bg = c.purpleDark})
    hl(0, 'BufferCurrentMod', {fg = c.nsaYellowOrange, bg = c.purpleDark})
    hl(0, 'BufferCurrentSign', {fg = c.nsaFront, bg = c.purpleDark})
    hl(0, 'BufferCurrentTarget', {fg = c.nsaRed, bg = c.purpleDark})
    hl(0, 'BufferVisible', {fg = c.nsaGray, bg = c.purpleDark})
    hl(0, 'BufferVisibleIndex', {fg = c.nsaGray, bg = c.purpleDark})
    hl(0, 'BufferVisibleMod', {fg = c.nsaYellowOrange, bg = c.purpleDark})
    hl(0, 'BufferVisibleSign', {fg = c.nsaGray, bg = c.purpleDark})
    hl(0, 'BufferVisibleTarget', {fg = c.nsaRed, bg = c.purpleDark})
    hl(0, 'BufferInactive', {fg = c.nsaGray, bg = c.grayDark})
    hl(0, 'BufferInactiveIndex', {fg = c.nsaGray, bg = c.grayDark})
    hl(0, 'BufferInactiveMod', {fg = c.nsaYellowOrange, bg = c.grayDark})
    hl(0, 'BufferInactiveSign', {fg = c.nsaGray, bg = c.grayDark})
    hl(0, 'BufferInactiveTarget', {fg = c.nsaRed, bg = c.grayDark})
    hl(0, 'BufferTabpage', {fg = c.nsaFront, bg = c.grayDark})
    hl(0, 'BufferTabpageFill', {fg = c.nsaFront, bg = c.grayDark})
    hl(0, 'BufferTabpages', {fg = c.nsaFront, bg = c.grayDark})
    hl(0, 'BufferTabpagesFill', {fg = c.nsaFront, bg = c.grayDark})

    -- IndentBlankLine
    hl(0, 'IndentBlanklineContextChar',
       {fg = c.grayMid3, bg = 'NONE', nocombine = true})
    hl(0, 'IndentBlanklineContextStart', {
        sp = c.grayMid3,
        bg = 'NONE',
        nocombine = true,
        underline = true
    })
    hl(0, 'IndentBlanklineChar',
       {fg = c.grayDark3, bg = 'NONE', nocombine = true})
    hl(0, 'IndentBlanklineSpaceChar',
       {fg = c.grayDark3, bg = 'NONE', nocombine = true})
    hl(0, 'IndentBlanklineSpaceCharBlankline',
       {fg = c.grayDark3, bg = 'NONE', nocombine = true})

    -- Neotest
    hl(0, 'NeotestAdapterName', {fg = c.nsaFront, bold = true})
    hl(0, 'NeotestDir', {fg = c.nsaBlue})
    hl(0, 'NeotestExpandMarker', {fg = c.nsaDimHighlight})
    hl(0, 'NeotestFailed', {fg = c.nsaRed})
    hl(0, 'NeotestFile', {fg = c.nsaBlue})
    hl(0, 'NeotestFocused', {bold = true})
    hl(0, 'NeotestIndent', {fg = c.nsaDimHighlight})
    hl(0, 'NeotestMarked', {fg = c.nsaYellowOrange, bold = true})
    hl(0, 'NeotestNamespace', {fg = c.nsaPink})
    hl(0, 'NeotestPassed', {fg = c.nsaGreenBlue})
    hl(0, 'NeotestRunning', {fg = c.nsaDarkYellow})
    hl(0, 'NeotestSkipped', {fg = c.nsaBlue})
    hl(0, 'NeotestTarget', {fg = c.nsaLightRed})
    hl(0, 'NeotestWatching', {fg = c.nsaDarkYellow})
    hl(0, 'NeotestWinSelect', {fg = c.nsaBlue, bold = true})

    -- LSP
    hl(0, 'DiagnosticOk', {fg = c.nsaGreenBlue, bg = 'NONE'})
    hl(0, 'DiagnosticError', {fg = c.nsaFront, bg = c.nsaErrorRed})
    hl(0, 'DiagnosticWarn', {fg = c.nsaYellow, bg = 'NONE'})
    hl(0, 'DiagnosticInfo', {fg = c.nsaBlue, bg = 'NONE'})
    hl(0, 'DiagnosticHint', {fg = c.nsaBlue, bg = 'NONE'})
    hl(0, 'DiagnosticUnnecessary', {fg = c.nsaDisabledBlue, bg = 'NONE'})
    hl(0, 'DiagnosticUnderlineError',
       {fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.nsaRnsaErrorReded})
    hl(0, 'DiagnosticUnderlineWarn',
       {fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.nsaGreen})
    hl(0, 'DiagnosticUnderlineInfo',
       {fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.nsaBlue})
    hl(0, 'DiagnosticUnderlineHint',
       {fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.nsaBlue})
    hl(0, 'LspReferenceText', {fg = 'NONE', bg = c.grayDarker})
    hl(0, 'LspReferenceRead', {fg = 'NONE', bg = c.grayDarker})
    hl(0, 'LspReferenceWrite', {fg = 'NONE', bg = c.grayDarker})

    -- COC.nvim
    hl(0, 'CocHighlightText', {fg = 'NONE', bg = c.grayDarker})
    hl(0, 'CocHighlightRead', {fg = 'NONE', bg = c.grayDarker})
    hl(0, 'CocHighlightWrite', {fg = 'NONE', bg = c.grayDarker})

    -- Nvim compe
    hl(0, 'CmpItemKindVariable', {fg = c.nsaLightBlue, bg = 'NONE'})
    hl(0, 'CmpItemKindInterface', {fg = c.nsaLightBlue, bg = 'NONE'})
    hl(0, 'CmpItemKindText', {fg = c.nsaLightBlue, bg = 'NONE'})
    hl(0, 'CmpItemKindFunction', {fg = c.nsaPink, bg = 'NONE'})
    hl(0, 'CmpItemKindMethod', {fg = c.nsaPink, bg = 'NONE'})
    hl(0, 'CmpItemKindKeyword', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, 'CmpItemKindProperty', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, 'CmpItemKindUnit', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, 'CmpItemKindConstructor', {fg = c.nsaUiOrange, bg = 'NONE'})
    hl(0, 'CmpItemMenu', {fg = c.grayLight, bg = 'NONE'})
    hl(0, 'CmpItemAbbr', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, 'CmpItemAbbrDeprecated',
       {fg = c.grayMidDark, bg = c.blackishGray, strikethrough = true})
    hl(0, 'CmpItemAbbrMatch', {fg = c.nsaMediumBlue, bg = 'NONE', bold = true})
    hl(0, 'CmpItemAbbrMatchFuzzy',
       {fg = c.nsaMediumBlue, bg = 'NONE', bold = true})

    -- HiPhish/rainbow-delimiters.nvim
    hl(0, 'RainbowDelimiterRed', {fg = c.nsaPink, bg = 'NONE'})
    hl(0, 'RainbowDelimiterOrange', {fg = c.nsaOrange, bg = 'NONE'})
    hl(0, 'RainbowDelimiterYellow', {fg = c.nsaYellowOrange, bg = 'NONE'})
    hl(0, 'RainbowDelimiterGreen', {fg = c.nsaGreen, bg = 'NONE'})
    hl(0, 'RainbowDelimiterCyan', {fg = c.nsaGreenBlue, bg = 'NONE'})
    hl(0, 'RainbowDelimiterBlue', {fg = c.nsaMediumBlue, bg = 'NONE'})
    hl(0, 'RainbowDelimiterViolet', {fg = c.nsaViolet, bg = 'NONE'})

    -- rcarriga/nvim-dap-ui
    -- Source: https://github.com/rcarriga/nvim-dap-ui/blob/master/lua/dapui/config/highlights.lua
    hl(0, 'DapUIBreakpointsCurrentLine', {fg = c.nsaGreenBlue, bold = true})
    hl(0, 'DapUIBreakpointsDisabledLine', {fg = c.nsaDimHighlight})
    hl(0, 'DapUIBreakpointsInfo', {fg = c.nsaGreenBlue})
    hl(0, 'DapUIBreakpointsLine', {fg = c.nsaPink})
    hl(0, 'DapUIBreakpointsPath', {fg = c.nsaPink})
    hl(0, 'DapUICurrentFrameName', {fg = c.nsaGreenBlue, bold = true})
    hl(0, 'DapUIDecoration', {fg = c.nsaPink})
    hl(0, 'DapUIFloatBorder', {fg = c.nsaPink})
    hl(0, 'DapUILineNumber', {fg = c.nsaPink})
    hl(0, 'DapUIModifiedValue', {fg = c.nsaPink, bold = true})
    hl(0, 'DapUIPlayPause', {fg = c.nsaGreenBlue})
    hl(0, 'DapUIPlayPauseNC', {fg = c.nsaGreenBlue})
    hl(0, 'DapUIRestart', {fg = c.nsaGreenBlue})
    hl(0, 'DapUIRestartNC', {fg = c.nsaGreenBlue})
    hl(0, 'DapUIScope', {fg = c.nsaPink})
    hl(0, 'DapUISource', {fg = c.nsaMediumBlue})
    hl(0, 'DapUIStepBack', {fg = c.nsaPink})
    hl(0, 'DapUIStepBackNC', {fg = c.nsaPink})
    hl(0, 'DapUIStepInto', {fg = c.nsaPink})
    hl(0, 'DapUIStepIntoNC', {fg = c.nsaPink})
    hl(0, 'DapUIStepOut', {fg = c.nsaPink})
    hl(0, 'DapUIStepOutNC', {fg = c.nsaPink})
    hl(0, 'DapUIStepOver', {fg = c.nsaPink})
    hl(0, 'DapUIStepOverNC', {fg = c.nsaPink})
    hl(0, 'DapUIStop', {fg = c.nsaRed})
    hl(0, 'DapUIStopNC', {fg = c.nsaRed})
    hl(0, 'DapUIStoppedThread', {fg = c.nsaPink})
    hl(0, 'DapUIThread', {fg = c.nsaGreenBlue})
    hl(0, 'DapUIType', {fg = c.nsaPink})
    hl(0, 'DapUIUnavailable', {fg = c.nsaDimHighlight})
    hl(0, 'DapUIUnavailableNC', {fg = c.nsaDimHighlight})
    hl(0, 'DapUIWatchesEmpty', {fg = c.nsaDimHighlight})
    hl(0, 'DapUIWatchesError', {fg = c.nsaRed})
    hl(0, 'DapUIWatchesValue', {fg = c.nsaGreenBlue})
    hl(0, 'DapUIWinSelect', {fg = c.nsaPink, bold = true})

    -- Dashboard
    hl(0, 'DashboardHeader', {fg = c.nsaBlue, bg = 'NONE'})
    hl(0, 'DashboardDesc', {fg = c.nsaYellowOrange, bg = 'NONE'})
    hl(0, 'DashboardIcon', {fg = c.nsaYellowOrange, bg = 'NONE'})
    hl(0, 'DashboardShortCut', {fg = c.nsaPink, bg = 'NONE'})
    hl(0, 'DashboardKey', {fg = c.nsaWhite, bg = 'NONE'})
    hl(0, 'DashboardFooter', {fg = c.nsaBlue, bg = 'NONE', italic = true})

    -- Illuminate
    hl(0, 'illuminatedWord', {bg = c.grayDarker})
    hl(0, 'illuminatedCurWord', {bg = c.grayDarker})
    hl(0, 'IlluminatedWordText', {bg = c.grayDarker})
    hl(0, 'IlluminatedWordRead', {bg = c.grayDarker})
    hl(0, 'IlluminatedWordWrite', {bg = c.grayDarker})

    -- mini.statusline
    hl(0, 'MiniStatuslineModeNormal', {bg = c.blackishBlue, fg = c.nsaFront})
    hl(0, 'MiniStatuslineModeInsert', {bg = c.blackishBlue, fg = c.nsaFront})
    hl(0, 'MiniStatuslineModeVisual', {bg = c.blackishBlue, fg = c.nsaFront})
    hl(0, 'MiniStatuslineModeReplace', {bg = c.blackishBlue, fg = c.nsaFront})
    hl(0, 'MiniStatuslineModeCommand', {bg = c.blackishBlue, fg = c.nsaFront})
    hl(0, 'MiniStatuslineModeOther', {bg = c.blackishBlue, fg = c.nsaFront})
    hl(0, 'MiniStatuslineDevinfo', {bg = c.blackishBlue, fg = c.nsaFront})
    hl(0, 'MiniStatuslineFilename', {bg = c.purpleDark, fg = c.nsaFront})
    hl(0, 'MiniStatuslineFileinfo', {bg = c.grayMid, fg = c.nsaFront})
    hl(0, 'MiniStatuslineInactive', {bg = c.blackishBlue, fg = c.nsaFront})

    -- NeogitOrg/neogit
    hl(0, 'NeogitDiffAdd', {fg = c.greenPastel, bg = c.greenDark})
    hl(0, 'NeogitDiffAddHighlight',
       {fg = c.greenPastel, bg = c.greenLight})
    hl(0, 'NeogitDiffContext', {fg = c.grayLight, bg = c.blackishBlue})
    hl(0, 'NeogitDiffContextHighlight',
       {fg = c.grayLight, bg = c.purpleDark})
    hl(0, 'NeogitDiffDelete', {fg = c.redPastel, bg = c.redDark})
    hl(0, 'NeogitDiffDeleteHighlight',
       {fg = c.redPastel, bg = c.redLight})
    hl(0, 'NeogitDiffHeader', {fg = c.grayLighter, bg = c.nsaBack})
    hl(0, 'NeogitDiffHeaderHighlight', {fg = c.grayLighter, bg = c.nsaBack})
    hl(0, 'NeogitHunkHeader', {fg = c.yellowPastel, bg = c.blackishBlue})
    hl(0, 'NeogitHunkHeaderHighlight',
       {fg = c.yellowPastel, bg = c.purpleDark})

    hl(0, 'NvimTreeFolderIcon', {fg = c.nsaBlue, bg = 'NONE'})
    hl(0, 'NvimTreeIndentMarker', {fg = c.grayMid2, bg = 'NONE'})

    hl(0, 'LspFloatWinNormal', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, 'LspFloatWinBorder', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspInfoBorder', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspSagaHoverBorder', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspSagaSignatureHelpBorder', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspSagaCodeActionBorder', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspSagaDefPreviewBorder', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspLinesDiagBorder', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspSagaRenameBorder', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspSagaBorderTitle', {fg = c.grayMidDark, bg = 'NONE'})
    hl(0, 'LSPSagaDiagnosticTruncateLine', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspSagaDiagnosticBorder', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspSagaDiagnosticBorder', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspSagaShTruncateLine', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspSagaShTruncateLine', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspSagaDocTruncateLine', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspSagaRenameBorder', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'LspSagaLspFinderBorder', {fg = c.grayMid2, bg = 'NONE'})

    hl(0, 'TelescopePromptBorder', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'TelescopeResultsBorder', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'TelescopePreviewBorder', {fg = c.grayMid2, bg = 'NONE'})
    hl(0, 'TelescopeNormal', {fg = c.nsaFront, bg = 'NONE'})
    hl(0, 'TelescopeSelection', {fg = c.nsaFront, bg = c.blueDark})
    hl(0, 'TelescopeMultiSelection',
       {fg = c.nsaFront, bg = c.blueDark})
    hl(0, 'TelescopeMatching', {fg = c.nsaMediumBlue, bg = 'NONE', bold = true})
    hl(0, 'TelescopePromptPrefix', {fg = c.nsaFront, bg = 'NONE'})

    -- Debugging
    hl(0, 'debugPC', {bg = '#4C4C19'})

    -- symbols-outline
    -- white fg and lualine blue bg
    hl(0, 'FocusedSymbol', {fg = '#ffffff', bg = c.nsaUiBlue})
    hl(0, 'SymbolsOutlineConnector', {fg = c.grayMid2, bg = 'NONE'})

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

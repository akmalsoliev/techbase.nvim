local v = vim
local set_hl = v.api.nvim_set_hl
local utils = require("utils")

local hl = {}
local gray0 = "#1e2124"
local gray1 = "#202428"
local gray2 = "#212428"
local gray3 = "#23262B"
local gray4 = "#242932"
local gray5 = "#3c3f51"
local gray6 = "#41445B"
local gray7 = "#575C71"
local gray77 = "#78839A"
local gray8 = "#969DB0"
local gray9 = "#A8B2C4"
local gray10 = "#DDE3EE"
local red1 = "#331B1D"
local red2 = "#BBBBFF"
local red3 = "#CC8E96"
local red4 = "#d66b7b"
local red5 = "#ed333b"
local yellow1 = "#F49D37"
local yellow2 = "#F8BC77"
local green1 = "#1B2C21"
local green2 = "#49C78E"
local green3 = "#71B294"
local blue0 = "#0E2758"
local blue1 = "#363E69"
local blue2 = "#566ab1"
local blue3 = "#a2bcdc"
local blue4 = "#9194B8"
local blue5 = "#98B4FE"

v.g.colors_name = "phobos-anomaly"

--------------------------------------------------
-- UI
--------------------------------------------------
hl["ColorColumn"] = {}
hl["Conceal"] = { link = "Normal" }
hl["CurSearch"] = { fg = gray0, bg = red4 }
hl["Cursor"] = { bg = red5 }
hl["CursorLine"] = { bg = gray2 }
hl["CursorLineNr"] = { link = "Normal" }
hl["Delimiter"] = { link = "Normal" }
hl["Directory"] = { fg = blue5 }
hl["EndOfBuffer"] = { link = "NonText" }
hl["Error"] = { fg = red5 }
hl["ErrorMsg"] = { link = "Error" }
hl["FoldColumn"] = { link = "NonText" }
hl["Folded"] = { fg = blue4, bg = gray1 }
hl["IncSearch"] = { link = "Search" }
hl["LineNr"] = { link = "NonText" }
hl["MatchParen"] = { fg = yellow2, bg = gray3 }
hl["ModeMsg"] = { fg = red2 }
hl["MoreMsg"] = { link = "ModeMsg" }
hl["MsgArea"] = { link = "Normal" }
hl["MsgSeparator"] = { fg = gray2, bg = gray2 }
hl["NonText"] = { fg = gray5 }
hl["Normal"] = { fg = gray10 }
hl["NormalFloat"] = { fg = gray9, bg = gray1 }
hl["Pmenu"] = { fg = gray7, bg = gray2 }
hl["PmenuMatch"] = { fg = blue4 }
hl["PmenuMatchSel"] = { bg = gray4 }
hl["PmenuSbar"] = { link = "Pmenu" }
hl["PmenuSel"] = { bg = gray4 }
hl["PmenuThumb"] = { bg = gray5 }
hl["Question"] = { fg = green3 }
hl["QuickFixLine"] = { link = "Search" }
hl["Search"] = { fg = gray0, bg = yellow2 }
hl["SignColumn"] = { link = "Normal" }
hl["SpecialChar"] = { link = "Special" }
hl["SpecialComment"] = { fg = yellow2 }
hl["SpecialKey"] = { fg = yellow2 }
hl["StatusLine"] = { fg = gray10 }
hl["StatusLineNC"] = {}
hl["Substitute"] = { fg = red5, bg = gray4 }
hl["TabLine"] = { fg = gray6, bg = gray0 }
hl["TabLineFill"] = { fg = gray5, bg = gray0 }
hl["TabLineSel"] = { fg = gray8, bg = gray2 }
hl["TermCursor"] = { link = "Cursor" }
hl["Title"] = { link = "Directory" }
hl["Todo"] = { link = "SpecialComment" }
hl["Visual"] = { bg = blue0 }
hl["WarningMsg"] = { link = "Error" }
hl["Whitespace"] = { link = "NonText" }
hl["WinBar"] = { fg = gray77 }
hl["WinBarNC"] = { link = "WinBar" }
hl["WinSeparator"] = { fg = hl["NormalFloat"]["bg"] }

hl["FloatBorder"] = { fg = gray4, bg = hl["NormalFloat"]["bg"] }
hl["FloatTitle"] = { fg = blue5, bg = hl["NormalFloat"]["bg"], sp = gray4, underline = true }

--------------------------------------------------
--  Syntax
--------------------------------------------------
hl["Comment"] = { fg = gray6 }
hl["Constant"] = { fg = red2 }
hl["Function"] = { fg = blue5 }
hl["Keyword"] = { fg = blue3 }
hl["Number"] = { fg = red4 }
hl["Operator"] = { fg = yellow2 }
hl["PreProc"] = { link = "Normal" }
hl["Special"] = { link = "Normal" }
hl["String"] = { fg = green3 }
hl["Tag"] = { link = "Normal" }

hl["Boolean"] = { link = "Constant" }
hl["Character"] = { link = "String" }
hl["Conditional"] = { link = "Statement" }
hl["Define"] = { link = "PreProc" }
hl["Exception"] = { link = "Statement" }
hl["Float"] = { link = "Number" }
hl["Identifier"] = { link = "Normal" }
hl["Include"] = { link = "PreProc" }
hl["Label"] = { link = "Conditional" }
hl["Macro"] = { link = "PreProc" }
hl["PreCondit"] = { link = "PreProc" }
hl["Repeat"] = { link = "Conditional" }
hl["Statement"] = { link = "Keyword" }
hl["StorageClass"] = { link = "Type" }
hl["Structure"] = { link = "Type" }
hl["Type"] = { fg = red2 }
hl["Typedef"] = { link = "Type" }

--------------------------------------------------
-- Filetype
--------------------------------------------------
-- diff
hl["DiffAdd"] = { bg = green1, fg = green3 }
hl["DiffChange"] = { bg = utils.tint(blue2, -40) }
hl["DiffDelete"] = { bg = red1, fg = red3 }
hl["DiffText"] = { bg = blue2 }

-- Gitcommit diffs
-- https://github.com/vim/vim/blob/c54f347d63bcca97ead673d01ac6b59914bb04e5/runtime/syntax/diff.vim
hl["diffAdded"] = { link = "DiffAdd" }
hl["diffChanged"] = { link = "DiffChange" }
hl["diffRemoved"] = { link = "DiffDelete" }

-- Gitcommit (info above the diff in a commit)
-- https://github.com/vim/vim/blob/2f0936cb9a2eb026acac03e6a8fd0b2a5d97508b/runtime/syntax/gitcommit.vim
hl["gitcommitHeader"] = {}
hl["gitcommitOnBranch"] = {}
hl["gitcommitType"] = { fg = red2 }

hl["gitcommitArrow"] = { link = "Statement" }
hl["gitcommitBlank"] = { link = "DiffAdd" }
hl["gitcommitBranch"] = { link = "DiffAdd" }
hl["gitcommitDiscarded"] = { link = "DiffAdd" }
hl["gitcommitDiscardedFile"] = { link = "DiffAdd" }
hl["gitcommitDiscardedType"] = { link = "DiffDelete" }
hl["gitcommitSummary"] = { link = "Directory" }
hl["gitcommitUnmerged"] = { link = "DiffAdd" }

-- Help
-- https://github.com/vim/vim/blob/2d8ed0203aedd5f6c22efa99394a3677c17c7a7a/runtime/syntax/help.vim
hl["helpCommand"] = { link = "Normal" }
hl["helpExample"] = { link = "String" }
hl["helpHyperTextEntry"] = { link = "Directory" }
hl["helpOption"] = { link = "Normal" }
hl["helpVim"] = { link = "Normal" }

-- Markdown
hl["markdownBlockquote"] = { fg = blue4 }
hl["markdownCodeBlock"] = { bg = gray3 }
hl["markdownHeadingRule"] = { link = "markdownRule" }
hl["markdownLinkText"] = { link = "String" }
hl["markdownListMarker"] = { link = "Normal" }
hl["markdownRule"] = { link = "NonText" }
hl["markdownUrl"] = { link = "@text.uri" }

--------------------------------------------------
-- Treesitter
--------------------------------------------------
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
hl["@namespace"] = { fg = blue5 }
hl["@number.comment"] = { link = "Comment" }
hl["@punctuation"] = { link = "Normal" }
hl["@string.regex"] = { fg = green2 }
hl["@markup.raw.block"] = { link = "markdownCodeBlock" }
hl["@text.uri"] = { fg = blue3, underline = true }
hl["@constant.builtin"] = { link = "Constant" }
hl["@function.call"] = { link = "Normal" }
hl["@markup.heading"] = { link = "Function" }
hl["@method.call"] = { link = "Normal" }
hl["@property"] = { link = "Keyword" }
hl["@string.documentation"] = { link = "Comment" }
hl["@string.escape"] = { link = "@string.regex" }
hl["@string.special"] = { link = "@string.regex" }
hl["@text.literal"] = { link = "Normal" }
hl["@text.reference"] = { link = "String" }

-- Latex
hl["@markup.link.label"] = { link = "String" }
hl["@markup.link.latex"] = { link = "Keyword" }
hl["@markup.environment.latex"] = { link = "markdownCodeBlock" }
hl["@module.latex"] = { link = "Function" }
hl["@punctuation.special.latex"] = { link = "Function" }

for level = 1, 4 do
	hl["@markup.heading." .. level .. ".latex"] = { link = "String" }
end

-- Markdown
hl["@conceal.markdown_inline"] = { link = "Operator" }
hl["@markup.link.markdown_inline"] = { link = "Normal" }
hl["@markup.list.checked.markdown"] = { link = "DiagnosticOk" }
hl["@markup.list.unchecked.markdown"] = { link = "DiagnosticError" }
hl["@markup.quote.markdown"] = { link = "markdownBlockquote" }
hl["@markup.raw.markdown_inline"] = { fg = blue3, bg = gray3 }
hl["@punctuation.special.markdown"] = { link = "@markup.quote.markdown" }

for level = 1, 6 do
	local heading = "@markup.heading." .. level .. ".markdown"
	hl[heading] = { fg = blue5 }
end

-- Comment keywords
for type, color in pairs({
	error = { bg = red5, fg = gray10 },
	danger = { bg = red5, fg = gray10 },
	warning = { bg = yellow1, fg = gray0 },
	todo = { bg = blue4, fg = gray0 },
	note = { bg = gray10, fg = gray0 },
}) do
	hl["@comment." .. type] = color
	hl["@comment." .. type .. ".comment"] = color
end

--------------------------------------------------
-- LSP
--------------------------------------------------
-- Diagnostics
for type, color in pairs({
	Error = red5,
	Warn = yellow1,
	Info = blue4,
	Hint = gray10,
	Ok = green2,
}) do
	hl["Diagnostic" .. type] = { fg = color }
	hl["DiagnosticSign" .. type] = { fg = color }
	hl["DiagnosticVirtualText" .. type] = { fg = color }
	hl["DiagnosticUnderline" .. type] = { sp = utils.tint(color, -15), undercurl = true }
end
hl["DiagnosticUnnecessary"] = { fg = hl["Comment"]["fg"], undercurl = true }

hl["LspCodeLens"] = { fg = gray7 }
hl["LspSignatureActiveParameter"] = { sp = gray10, underline = true }

-- Semantic Tokens
for _, group in ipairs(v.fn.getcompletion("@lsp", "highlight")) do
	v.api.nvim_set_hl(0, group, {})
end

--------------------------------------------------
-- Plugins
--------------------------------------------------
-- folke/lazy.nvim
hl["LazyButton"] = { bg = gray4 }
hl["LazyH2"] = { link = "FloatTitle" }
hl["LazyButton"] = { bg = gray3 }
hl["LazyButtonActive"] = { link = "Search" }
hl["LazyCommit"] = { link = "" }
hl["LazyCommitType"] = { link = "@markup.heading.gitcommit" }
hl["LazyCommitIssue"] = { link = "Number" }
hl["LazyProgressDone"] = { link = "LazyComment" }
hl["LazyProgressTodo"] = { link = "FloatBorder" }
hl["LazyReasonCmd"] = { link = "Comment" }
hl["LazyReasonColorscheme"] = { link = "Comment" }
hl["LazyReasonEvent"] = { link = "Comment" }
hl["LazyReasonFt"] = { link = "Comment" }
hl["LazyReasonPlugin"] = { link = "Comment" }
hl["LazyReasonRequire"] = { link = "Comment" }
hl["LazyReasonSource"] = { link = "Comment" }
hl["LazyReasonStart"] = { link = "Comment" }
hl["LazySpecial"] = { link = "Comment" }

-- mason-org/mason.nvim
hl["MasonLink"] = { fg = blue3 }
hl["MasonError"] = { link = "DiagnosticError" }
hl["MasonMuted"] = { link = "Comment" }
hl["MasonHeader"] = { link = "FloatTitle" }
hl["MasonNormal"] = { link = "NormalFloat" }
hl["MasonHeading"] = { link = "FloatTitle" }
hl["MasonWarning"] = { link = "DiagnosticWarn" }
hl["MasonBackdrop"] = { link = "NormalFloat" }
hl["MasonHighlight"] = { fg = gray6 }
hl["MasonHighlightBlock"] = { bg = gray4 }
hl["MasonMutedBlock"] = { bg = gray4 }
hl["MasonMutedBlockBold"] = { link = "Comment" }
hl["MasonHeaderSecondary"] = { link = "Search" }
hl["MasonHighlightBlockBold"] = { link = "Search" }
hl["MasonHighlightSecondary"] = { link = "Search" }
hl["MasonHighlightBlockSecondary"] = {}
hl["MasonHighlightBlockBoldSecondary"] = {}

-- lewis6991/gitsigns.nvim
hl["GitSignsAdd"] = { fg = utils.tint(green2, -25) }
hl["GitSignsChange"] = { fg = utils.tint(blue5, -25) }
hl["GitSignsDelete"] = { fg = utils.tint(red5, -25) }
hl["GitSignsChangedelete"] = { link = "GitSignsChange" }
hl["GitSignsTopdelete"] = { link = "GitSignsDelete" }
hl["GitSignsUntracked"] = { link = "NonText" }
hl["GitSignsStagedAdd"] = { fg = utils.tint(green2, -60) }
hl["GitSignsStagedChange"] = { fg = utils.tint(blue5, -60) }
hl["GitSignsStagedDelete"] = { fg = utils.tint(red5, -60) }
hl["GitSignsStagedChangedelete"] = { link = "GitSignsStagedChange" }
hl["GitSignsStagedTopdelete"] = { link = "GitSignsStagedDelete" }
hl["GitSignsStagedUntracked"] = { link = "GitSignsStagedAdd" }
hl["GitSignsCurrentLineBlame"] = { link = "NonText" }
hl["GitSignsAddInline"] = { link = "DiffAdd" }
hl["GitSignsAddLnInline"] = { fg = "fg", bg = utils.tint(hl["DiffAdd"].bg, 75) }
hl["GitSignsDeleteInline"] = { link = "DiffDelete" }
hl["GitSignsDeleteLnInline"] = { fg = "fg", bg = utils.tint(hl["DiffDelete"].bg, 75) }
hl["GitSignsChangeInline"] = { link = "DiffText" }
hl["GitSignsChangeLnInline"] = { link = "DiffChange" }
hl["GitSignsDeleteVirtLn"] = { link = "DiffDelete" }
hl["GitSignsDeleteVirtLnInLine"] = { link = "DiffDelete" }
hl["GitSignsVirtLnum"] = { link = "LineNr" }

-- stevearc/aerial.nvim
hl["AerialLine"] = { link = "PmenuSel" }
hl["AerialNormal"] = { link = "" }

-- folke/edgy.nvim
hl["EdgyIcon"] = { fg = gray7, bg = hl["NormalFloat"]["bg"] }
hl["EdgyIconActive"] = { link = "EdgyIcon" }
hl["EdgyTitle"] = { link = "NormalFloat" }
hl["EdgyWinBar"] = { bg = hl["NormalFloat"]["bg"], underline = true, sp = gray4 }

-- hrsh7th/nvim-cmp
hl["CmpItemAbbrDeprecated"] = { strikethrough = true }
hl["CmpItemAbbrMatch"] = { link = "PmenuMatch" }
hl["CmpItemKind"] = { link = "Keyword" }

-- saghen/blink.cmp
hl["BlinkCmpDocBorder"] = { link = "FloatBorder" }
hl["BlinkCmpDocSeparator"] = { link = "NonText" }
hl["BlinkCmpGhostText"] = { link = "NonText" }
hl["BlinkCmpKind"] = { fg = blue4 }
hl["BlinkCmpLabel"] = { fg = gray7 }
hl["BlinkCmpLabelDetail"] = { link = "NonText" }
hl["BlinkCmpLabelDescription"] = { fg = gray5 }
hl["BlinkCmpLabelMatch"] = { link = "PmenuMatch" }
hl["BlinkCmpMenuSelection"] = { link = "PmenuMatchSel" }

-- rrethy/vim-illuminate
hl["IlluminatedWordText"] = { link = "MatchParen" }
hl["IlluminatedWordRead"] = { link = "IlluminatedWordText" }
hl["IlluminatedWordWrite"] = { link = "IlluminatedWordText" }

-- echasnovski/mini.cursorword
hl["MiniCursorwordCurrent"] = {}
hl["MiniCursorword"] = { link = "IlluminatedWordText" }

-- rareitems/hl_match_area.nvim
hl["MatchArea"] = { link = "MatchParen" }

-- mcauley-penney/visual-whitespace.nvim
hl["VisualNonText"] = { fg = blue1, bg = hl["Visual"]["bg"] }

-- mcauley-penney/match-visual.nvim
hl["VisualMatch"] = { link = "MatchParen" }

--------------------------------------------------
-- Execute
--------------------------------------------------
for group, opts in pairs(hl) do
	set_hl(0, group, opts)
end

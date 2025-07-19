local tint = require("utils").tint

vim.g.colors_name = "techbase"

-- ************** Palette **************
-- foreground
local normal_fg = "#CCD5E5"
local float_fg = "#D6DDEA"
local nontext_fg = "#363848"
local comment_fg = "#474B65"
local quote_fg = "#7E8193"

-- background
local normal_bg = "#191d23"
local panel_bg = "#1B2026"
local float_bg = "#1C2127"
local normal_bg_alt = "#20252E"
local normal_bg_accent = "#242932"
local float_bg_border = "#2A2F39"
local float_bg_select = "#1F242D"

-- accent
local v_select = "#121E42"
local v_select_nontext = "#4833A4"
local string = "#74BAA8"
local raw_string = "#0EC256"
local cursor = "#5DCD9A"
local operator = "#b09884"
local constant = "#BCB6EC"
local keyword = "#A9B9EF"
local important = "#6A8BE3"
local search = "#E9B872"
local number = "#B85B53"

-- notifications
local info = "#1A8C9B"
local warn = "#FFA630"
local error = "#F71735"

-- git
local git_add_fg = "#9FDACC"
local git_add_bg = "#1E3A34"
local git_add_col = "#366A4C"
local git_delete_fg = "#FFC0C5"
local git_delete_bg = "#3A1A21"
local git_delete_col = "#942B27"
local git_change_fg = "#B7C4FF"
local git_change_bg = "#1F2B5C"
local git_change_col = "#3F58BB"

local hl = {}

-- ************** UI **************
-- windows
hl["Normal"] = { fg = normal_fg, bg = normal_bg }
hl["NormalFloat"] = { fg = float_fg, bg = float_bg }
hl["FloatBorder"] = { fg = float_bg_border, bg = float_bg }
hl["FloatTitle"] = { fg = important, bg = float_bg }
hl["WinSeparator"] = { fg = normal_bg_alt }

-- diff
hl["Added"] = { fg = git_add_fg, bg = git_add_bg }
hl["Changed"] = { fg = git_change_fg, bg = git_change_bg }
hl["Removed"] = { fg = git_delete_fg, bg = git_delete_bg }

-- elements
hl["ColorColumn"] = {}
hl["Conceal"] = { fg = "fg" }
hl["CurSearch"] = { fg = normal_bg, bg = number }
hl["Cursor"] = { bg = cursor }
hl["CursorLine"] = { bg = normal_bg_accent }
hl["CursorLineNr"] = { fg = "fg" }
hl["Delimiter"] = { fg = "fg" }
hl["Directory"] = { fg = important }
hl["EndOfBuffer"] = { link = "NonText" }
hl["Error"] = { fg = error }
hl["ErrorMsg"] = { link = "Error" }
hl["FoldColumn"] = { link = "NonText" }
hl["Folded"] = { fg = keyword, bg = normal_bg_accent }
hl["IncSearch"] = { link = "Search" }
hl["LineNr"] = { link = "NonText" }
hl["MatchParen"] = { fg = search, bg = normal_bg_alt }
hl["ModeMsg"] = { fg = constant }
hl["MoreMsg"] = { link = "ModeMsg" }
hl["MsgArea"] = { fg = "fg" }
hl["MsgSeparator"] = { fg = float_bg }
hl["NonText"] = { fg = nontext_fg }
hl["Pmenu"] = { fg = float_fg, bg = float_bg }
hl["PmenuMatch"] = { fg = important }
hl["PmenuSbar"] = { link = "Pmenu" }
hl["PmenuSel"] = { bg = float_bg_select }
hl["PmenuMatchSel"] = { link = "PmenuSel" }
hl["PmenuThumb"] = { bg = nontext_fg }
hl["Question"] = { fg = string }
hl["QuickFixLine"] = { link = "Search" }
hl["Search"] = { fg = normal_bg, bg = search }
hl["SignColumn"] = { fg = "fg" }
hl["SpecialChar"] = { link = "Special" }
hl["SpecialComment"] = { fg = search }
hl["SpecialKey"] = { fg = search }
hl["StatusLine"] = { fg = normal_fg }
hl["StatusLineNC"] = {}
hl["Substitute"] = { fg = string, bg = normal_bg_alt }
hl["TabLine"] = { fg = comment_fg, bg = normal_bg }
hl["TabLineFill"] = { fg = nontext_fg, bg = normal_bg }
hl["TabLineSel"] = { fg = important }
hl["TermCursor"] = { link = "Cursor" }
hl["Title"] = { link = "Directory" }
hl["Todo"] = { link = "SpecialComment" }
hl["Visual"] = { bg = v_select }
hl["WarningMsg"] = { link = "Error" }
hl["Whitespace"] = { link = "NonText" }
hl["WinBar"] = { fg = float_fg }
hl["WinBarNC"] = { link = "WinBar" }

-- ************** SYNTAX **************

hl["Comment"] = { fg = comment_fg }
hl["Constant"] = { fg = constant }
hl["Function"] = { fg = important }
hl["Keyword"] = { fg = keyword }
hl["Number"] = { fg = number }
hl["Operator"] = { fg = operator }
hl["String"] = { fg = string }
hl["Type"] = { fg = keyword }

hl["Boolean"] = { link = "Constant" }
hl["Character"] = { link = "String" }
hl["Conditional"] = { link = "Statement" }
hl["Define"] = { link = "PreProc" }
hl["Exception"] = { link = "Statement" }
hl["Float"] = { link = "Number" }
hl["Identifier"] = { fg = "fg" }
hl["Include"] = { link = "PreProc" }
hl["Label"] = { link = "Conditional" }
hl["Macro"] = { link = "PreProc" }
hl["PreCondit"] = { link = "PreProc" }
hl["PreProc"] = { fg = "fg" }
hl["Repeat"] = { link = "Conditional" }
hl["Special"] = { fg = "fg" }
hl["Statement"] = { link = "Keyword" }
hl["StorageClass"] = { link = "Type" }
hl["Structure"] = { link = "Type" }
hl["Tag"] = { fg = "fg" }
hl["Typedef"] = { link = "Type" }

-- ************** FILETYPE **************
-- diff
hl["DiffAdd"] = { link = "Added" }
hl["DiffChange"] = { link = "Changed" }
hl["DiffDelete"] = { link = "Removed" }
hl["DiffText"] = { bg = important }

-- Gitcommit diffs
-- https://github.com/vim/vim/blob/c54f347d63bcca97ead673d01ac6b59914bb04e5/runtime/syntax/diff.vim
hl["diffAdded"] = { link = "Added" }
hl["diffChanged"] = { link = "Changed" }
hl["diffRemoved"] = { link = "Removed" }

-- Gitcommit (info above the diff in a commit)
-- https://github.com/vim/vim/blob/2f0936cb9a2eb026acac03e6a8fd0b2a5d97508b/runtime/syntax/gitcommit.vim
hl["gitcommitHeader"] = {}
hl["gitcommitOnBranch"] = {}
hl["gitcommitType"] = { fg = constant }

hl["gitcommitArrow"] = { link = "Statement" }
hl["gitcommitBlank"] = { link = "Added" }
hl["gitcommitBranch"] = { link = "Added" }
hl["gitcommitDiscarded"] = { link = "Added" }
hl["gitcommitDiscardedFile"] = { link = "Added" }
hl["gitcommitDiscardedType"] = { link = "Removed" }
hl["gitcommitSummary"] = { link = "Directory" }
hl["gitcommitUnmerged"] = { link = "Added" }

-- Help
-- https://github.com/vim/vim/blob/2d8ed0203aedd5f6c22efa99394a3677c17c7a7a/runtime/syntax/help.vim
hl["helpCommand"] = { fg = "fg" }
hl["helpExample"] = { link = "String" }
hl["helpHyperTextEntry"] = { link = "Directory" }
hl["helpOption"] = { fg = "fg" }
hl["helpVim"] = { fg = "fg" }

-- Markdown
hl["markdownBlockquote"] = { fg = quote_fg }
hl["markdownCodeBlock"] = { bg = normal_bg_alt }
hl["markdownHeadingRule"] = { link = "markdownRule" }
hl["markdownLinkText"] = { link = "String" }
hl["markdownListMarker"] = { fg = "fg" }
hl["markdownRule"] = { link = "NonText" }
hl["markdownUrl"] = { link = "@text.uri" }

-- ini
hl["dosiniHeader"] = { link = "@markup.heading.1.markdown" }
hl["dosiniLabel"] = { link = "@property" }

-- ************** TREESITTER **************
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
hl["@constant.builtin"] = { link = "Constant" }
hl["@function.call"] = { fg = "fg" }
hl["@function.method.call"] = { fg = "fg" }
hl["@markup.heading"] = { link = "Function" }
hl["@markup.raw.block"] = { link = "markdownCodeBlock" }
hl["@method.call"] = { fg = "fg" }
hl["@module"] = { fg = "fg" }
hl["@namespace"] = { fg = important }
hl["@number.comment"] = { link = "Comment" }
hl["@property"] = { fg = "fg" }
hl["@punctuation"] = { fg = "fg" }
hl["@string.documentation"] = { link = "Comment" }
hl["@string.escape"] = { link = "@string.regex" }
hl["@string.regex"] = { fg = raw_string }
hl["@string.special.symbol"] = { link = "@string.regex" }
hl["@text.literal"] = { fg = "fg" }
hl["@text.reference"] = { link = "String" }
hl["@text.uri"] = { fg = keyword, underline = true }
hl["@type.builtin"] = { link = "@type" }

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
hl["@markup.link.markdown_inline"] = { fg = "fg" }
hl["@markup.list.checked.markdown"] = { link = "DiagnosticOk" }
hl["@markup.list.unchecked.markdown"] = { link = "DiagnosticError" }
hl["@markup.quote.markdown"] = { link = "markdownBlockquote" }
hl["@markup.raw.markdown_inline"] = { fg = keyword, bg = normal_bg_alt }
hl["@punctuation.special.markdown"] = { link = "@markup.quote.markdown" }

for level = 1, 6 do
  local heading = "@markup.heading." .. level .. ".markdown"
  hl[heading] = { fg = important }
end

-- Comment keywords
for comment_type, color in pairs({
  error = { bg = error, fg = normal_fg },
  danger = { bg = error, fg = normal_fg },
  warning = { bg = warn, fg = normal_bg },
  todo = { bg = keyword, fg = normal_bg },
  note = { bg = normal_fg, fg = normal_bg },
}) do
  hl["@comment." .. comment_type] = color
  hl["@comment." .. comment_type .. ".comment"] = color
end

-- ************** LSP **************
-- Diagnostics
for type, color in pairs({
  Error = error,
  Warn = warn,
  Info = info,
  Hint = float_fg,
  Ok = raw_string,
}) do
  hl["Diagnostic" .. type] = { fg = color }
  hl["DiagnosticSign" .. type] = { fg = color }
  hl["DiagnosticVirtualText" .. type] = { fg = color }
  hl["DiagnosticUnderline" .. type] =
    { sp = tint(color, -15), undercurl = true }
end
hl["DiagnosticUnnecessary"] = { fg = hl["Comment"]["fg"], undercurl = true }

hl["LspCodeLens"] = { fg = nontext_fg }
hl["LspSignatureActiveParameter"] = { sp = normal_fg, underline = true }

-- Semantic Tokens
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
  vim.api.nvim_set_hl(0, group, {})
end

-- ************** PLUGINS **************
-- folke/lazy.nvim
hl["LazyButton"] = { bg = float_bg_select }
hl["LazyH2"] = { link = "FloatTitle" }
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
hl["MasonLink"] = { fg = keyword }
hl["MasonError"] = { link = "DiagnosticError" }
hl["MasonMuted"] = { link = "Comment" }
hl["MasonHeader"] = { link = "FloatTitle" }
hl["MasonNormal"] = { link = "NormalFloat" }
hl["MasonHeading"] = { link = "FloatTitle" }
hl["MasonWarning"] = { link = "DiagnosticWarn" }
hl["MasonBackdrop"] = { link = "NormalFloat" }
hl["MasonHighlight"] = { fg = comment_fg }
hl["MasonHighlightBlock"] = { bg = normal_bg_alt }
hl["MasonMutedBlock"] = { bg = normal_bg_alt }
hl["MasonMutedBlockBold"] = { link = "Comment" }
hl["MasonHeaderSecondary"] = { link = "Search" }
hl["MasonHighlightBlockBold"] = { link = "Search" }
hl["MasonHighlightSecondary"] = { link = "Search" }
hl["MasonHighlightBlockSecondary"] = {}
hl["MasonHighlightBlockBoldSecondary"] = {}

-- lewis6991/gitsigns.nvim
hl["GitSignsAdd"] = { fg = git_add_col }
hl["GitSignsChange"] = { fg = git_change_col }
hl["GitSignsDelete"] = { fg = git_delete_col }
hl["GitSignsChangedelete"] = { link = "GitSignsChange" }
hl["GitSignsTopdelete"] = { link = "GitSignsDelete" }
hl["GitSignsUntracked"] = { link = "NonText" }
hl["GitSignsStagedAdd"] = { fg = tint(git_add_col, -50) }
hl["GitSignsStagedChange"] = { fg = tint(git_change_col, -50) }
hl["GitSignsStagedDelete"] = { fg = tint(git_delete_col, -50) }
hl["GitSignsStagedChangedelete"] = { link = "GitSignsStagedChange" }
hl["GitSignsStagedTopdelete"] = { link = "GitSignsStagedDelete" }
hl["GitSignsStagedUntracked"] = { link = "GitSignsStagedAdd" }
hl["GitSignsCurrentLineBlame"] = { link = "NonText" }
hl["GitSignsAddInline"] = { link = "Added" }
hl["GitSignsAddLnInline"] = { fg = "fg", bg = tint(git_add_bg, 75) }
hl["GitSignsDeleteInline"] = { link = "Removed" }
hl["GitSignsDeleteLnInline"] = { fg = "fg", bg = tint(git_delete_bg, 75) }
hl["GitSignsChangeInline"] = { link = "DiffText" }
hl["GitSignsChangeLnInline"] = { link = "Changed" }
hl["GitSignsDeleteVirtLn"] = { link = "Removed" }
hl["GitSignsDeleteVirtLnInLine"] = { link = "Removed" }
hl["GitSignsVirtLnum"] = { link = "LineNr" }

-- stevearc/aerial.nvim
hl["AerialLine"] = { bg = float_bg_select }
hl["AerialNormal"] = { link = "" }

-- folke/edgy.nvim
hl["EdgyNormal"] = { fg = comment_fg, bg = panel_bg }
hl["EdgyIcon"] = { fg = comment_fg, bg = panel_bg }
hl["EdgyIconActive"] = { link = "EdgyIcon" }
hl["EdgyWinBar"] = { bg = panel_bg, underline = true, sp = normal_bg_alt }
hl["EdgyTitle"] = { bg = panel_bg }

-- hrsh7th/nvim-cmp
hl["CmpItemAbbrDeprecated"] = { strikethrough = true }
hl["CmpItemAbbrMatch"] = { link = "PmenuMatch" }
hl["CmpItemKind"] = { link = "Keyword" }

-- saghen/blink.cmp
hl["BlinkCmpDoc"] = { link = "Pmenu" }
hl["BlinkCmpDocBorder"] = { fg = float_bg_border, bg = float_bg }
hl["BlinkCmpDocSeparator"] = { fg = float_bg_border }
hl["BlinkCmpGhostText"] = { link = "NonText" }
hl["BlinkCmpKind"] = { fg = important }
hl["BlinkCmpLabel"] = { fg = float_fg }
hl["BlinkCmpLabelDetail"] = { link = "NonText" }
hl["BlinkCmpLabelDescription"] = { fg = nontext_fg }
hl["BlinkCmpLabelMatch"] = { link = "PmenuMatch" }
hl["BlinkCmpMenuBorder"] =
  { fg = hl["FloatBorder"]["fg"], bg = hl["Pmenu"]["bg"] }
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
hl["VisualNonText"] = { fg = v_select_nontext, bg = hl["Visual"]["bg"] }

-- mcauley-penney/match-visual.nvim
hl["VisualMatch"] = { link = "MatchParen" }

-- ************** EXECUTE **************
for group, opts in pairs(hl) do
  vim.api.nvim_set_hl(0, group, opts)
end

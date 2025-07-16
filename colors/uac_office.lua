vim.g.colors_name = "uac_office"

---lighten or darken a HEX colour by `percent`
---@param hex string
---@param percent number positive = lighter, negative = darker
---@return string
local function tint(hex, percent)
  local r, g, b = hex:match("^#?(%x%x)(%x%x)(%x%x)$")
  r, g, b = tonumber(r, 16), tonumber(g, 16), tonumber(b, 16)

  local convert = function(c)
    c = math.floor(c * (100 + percent) / 100 + 0.5)
    return c > 255 and 255 or c
  end

  return ("#%02x%02x%02x"):format(convert(r), convert(g), convert(b))
end

-- ************** Palette **************
-- foreground
local fg = "#191d23"
local fg_inactive_light = "#A7A9BD"
local fg_inactive = "#8A8DA7"
local fgfloat = "#000000"

-- background
local bg = "#C6CCD6"
local bg_accent = "#A3AAB7"
local bg_block = "#C7CCD3"
local bgfloat = "#AAB9D4"
local bgfloat_accent = "#7890BC"
local bgfloat_select = "#99ABCB"

-- accent
local v_select = "#B1B1D6"
local v_select_nontext = "#9090C4"
local string = "#2E9667"
local raw_text = "#226F4C"
local operator = "#516663"
local constant = "#7C70DA"
local keyword = "#6666FF"
local important = "#3636FF"
local search = "#C8872B"
local number = "#A75255"

-- notifications
local info = "#A16C9D"
local warn = "#E38100"
local error = "#F71735"

-- git
local git_add_fg = "#42504E"
local git_add_bg = "#A5B1B5"
local git_delete_bg = "#F3BABF"
local git_delete_fg = "#341c28"
local git_change = "#5E7CE2"

local hl = {}

-- ************** UI **************
-- windows
hl["Normal"] = { fg = fg, bg = bg }
hl["NormalFloat"] = { fg = fgfloat, bg = bgfloat }
hl["FloatBorder"] = { fg = bgfloat_accent, bg = hl["NormalFloat"]["bg"] }
hl["FloatTitle"] =
  { fg = important, bg = hl["NormalFloat"]["bg"], sp = bg_block }
hl["WinSeparator"] = { fg = hl["NormalFloat"]["bg"] }

-- elements
hl["ColorColumn"] = {}
hl["Conceal"] = { link = "Normal" }
hl["CurSearch"] = { fg = bg, bg = number }
hl["Cursor"] = { bg = raw_text }
hl["CursorLine"] = { bg = bg_accent }
hl["CursorLineNr"] = { link = "Normal" }
hl["Delimiter"] = { link = "Normal" }
hl["Directory"] = { fg = important }
hl["EndOfBuffer"] = { link = "NonText" }
hl["Error"] = { fg = error }
hl["ErrorMsg"] = { link = "Error" }
hl["FoldColumn"] = { link = "NonText" }
hl["Folded"] = { fg = keyword, bg = bg_accent }
hl["IncSearch"] = { link = "Search" }
hl["LineNr"] = { link = "NonText" }
hl["MatchParen"] = { fg = search, bg = bg_block }
hl["ModeMsg"] = { fg = constant }
hl["MoreMsg"] = { link = "ModeMsg" }
hl["MsgArea"] = { link = "Normal" }
hl["MsgSeparator"] = { fg = bgfloat }
hl["NonText"] = { fg = fg_inactive_light }
hl["Pmenu"] = { fg = fgfloat, bg = bgfloat }
hl["PmenuMatch"] = { fg = important }
hl["PmenuSbar"] = { link = "Pmenu" }
hl["PmenuSel"] = { bg = bgfloat_select }
hl["PmenuMatchSel"] = { link = "PmenuSel" }
hl["PmenuThumb"] = { bg = fg_inactive_light }
hl["Question"] = { fg = string }
hl["QuickFixLine"] = { link = "Search" }
hl["Search"] = { fg = bg, bg = search }
hl["SignColumn"] = { link = "Normal" }
hl["SpecialChar"] = { link = "Special" }
hl["SpecialComment"] = { fg = search }
hl["SpecialKey"] = { fg = search }
hl["StatusLine"] = { fg = fg }
hl["StatusLineNC"] = {}
hl["Substitute"] = { fg = string, bg = bg_block }
hl["TabLine"] = { fg = fg_inactive, bg = bg }
hl["TabLineFill"] = { fg = fg_inactive_light, bg = bg }
hl["TabLineSel"] = { fg = important }
hl["TermCursor"] = { link = "Cursor" }
hl["Title"] = { link = "Directory" }
hl["Todo"] = { link = "SpecialComment" }
hl["Visual"] = { bg = v_select }
hl["WarningMsg"] = { link = "Error" }
hl["Whitespace"] = { link = "NonText" }
hl["WinBar"] = { fg = fgfloat }
hl["WinBarNC"] = { link = "WinBar" }

-- ************** SYNTAX **************
hl["Comment"] = { fg = fg_inactive }
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
hl["Identifier"] = { link = "Normal" }
hl["Include"] = { link = "PreProc" }
hl["Label"] = { link = "Conditional" }
hl["Macro"] = { link = "PreProc" }
hl["PreCondit"] = { link = "PreProc" }
hl["PreProc"] = { link = "Normal" }
hl["Repeat"] = { link = "Conditional" }
hl["Special"] = { link = "Normal" }
hl["Statement"] = { link = "Keyword" }
hl["StorageClass"] = { link = "Type" }
hl["Structure"] = { link = "Type" }
hl["Tag"] = { link = "Normal" }
hl["Typedef"] = { link = "Type" }

-- ************** FILETYPE **************
-- diff
hl["DiffAdd"] = { fg = git_add_fg, bg = git_add_bg }
hl["DiffChange"] = { bg = tint(git_change, -40) }
hl["DiffDelete"] = { fg = git_delete_fg, bg = git_delete_bg }
hl["DiffText"] = { bg = important }

-- Gitcommit diffs
-- https://github.com/vim/vim/blob/c54f347d63bcca97ead673d01ac6b59914bb04e5/runtime/syntax/diff.vim
hl["diffAdded"] = { link = "DiffAdd" }
hl["diffChanged"] = { link = "DiffChange" }
hl["diffRemoved"] = { link = "DiffDelete" }

-- Gitcommit (info above the diff in a commit)
-- https://github.com/vim/vim/blob/2f0936cb9a2eb026acac03e6a8fd0b2a5d97508b/runtime/syntax/gitcommit.vim
hl["gitcommitHeader"] = {}
hl["gitcommitOnBranch"] = {}
hl["gitcommitType"] = { fg = constant }

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
hl["markdownBlockquote"] = { fg = keyword }
hl["markdownCodeBlock"] = { bg = bg_block }
hl["markdownHeadingRule"] = { link = "markdownRule" }
hl["markdownLinkText"] = { link = "String" }
hl["markdownListMarker"] = { link = "Normal" }
hl["markdownRule"] = { link = "NonText" }
hl["markdownUrl"] = { link = "@text.uri" }

-- ini
hl["dosiniHeader"] = { link = "@markup.heading.1.markdown" }
hl["dosiniLabel"] = { link = "@property" }

-- ************** TREESITTER **************
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
hl["@variable"] = { link = "Normal" }
hl["@namespace"] = { fg = important }
hl["@number.comment"] = { link = "Comment" }
hl["@punctuation"] = { link = "Normal" }
hl["@string.regex"] = { fg = raw_text }
hl["@markup.raw.block"] = { link = "markdownCodeBlock" }
hl["@text.uri"] = { fg = keyword, underline = true }
hl["@constant.builtin"] = { link = "Constant" }
hl["@function.call"] = { link = "Normal" }
hl["@markup.heading"] = { link = "Function" }
hl["@method.call"] = { link = "Normal" }
hl["@property"] = { link = "Normal" }
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
hl["@markup.raw.markdown_inline"] = { fg = keyword, bg = bg_block }
hl["@punctuation.special.markdown"] = { link = "@markup.quote.markdown" }

for level = 1, 6 do
  local heading = "@markup.heading." .. level .. ".markdown"
  hl[heading] = { fg = important }
end

-- Comment keywords
for comment_type, color in pairs({
  error = { bg = error, fg = fg },
  danger = { bg = error, fg = fg },
  warning = { bg = warn, fg = bg },
  todo = { bg = keyword, fg = bg },
  note = { bg = fg, fg = bg },
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
  Hint = fgfloat,
  Ok = raw_text,
}) do
  hl["Diagnostic" .. type] = { fg = color }
  hl["DiagnosticSign" .. type] = { fg = color }
  hl["DiagnosticVirtualText" .. type] = { fg = color }
  hl["DiagnosticUnderline" .. type] =
    { sp = tint(color, -15), undercurl = true }
end
hl["DiagnosticUnnecessary"] = { fg = hl["Comment"]["fg"], undercurl = true }

hl["LspCodeLens"] = { fg = fg_inactive_light }
hl["LspSignatureActiveParameter"] = { sp = fg, underline = true }

-- Semantic Tokens
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
  vim.api.nvim_set_hl(0, group, {})
end

-- ************** PLUGINS **************
-- folke/lazy.nvim
hl["LazyButton"] = { bg = bg_block }
hl["LazyH2"] = { link = "FloatTitle" }
hl["LazyButton"] = { bg = bg_block }
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
hl["MasonHighlight"] = { fg = fg_inactive }
hl["MasonHighlightBlock"] = { bg = bg_block }
hl["MasonMutedBlock"] = { bg = bg_block }
hl["MasonMutedBlockBold"] = { link = "Comment" }
hl["MasonHeaderSecondary"] = { link = "Search" }
hl["MasonHighlightBlockBold"] = { link = "Search" }
hl["MasonHighlightSecondary"] = { link = "Search" }
hl["MasonHighlightBlockSecondary"] = {}
hl["MasonHighlightBlockBoldSecondary"] = {}

-- lewis6991/gitsigns.nvim
hl["GitSignsAdd"] = { fg = tint(raw_text, -25) }
hl["GitSignsChange"] = { fg = tint(important, -25) }
hl["GitSignsDelete"] = { fg = tint(error, -25) }
hl["GitSignsChangedelete"] = { link = "GitSignsChange" }
hl["GitSignsTopdelete"] = { link = "GitSignsDelete" }
hl["GitSignsUntracked"] = { link = "NonText" }
hl["GitSignsStagedAdd"] = { fg = tint(raw_text, -60) }
hl["GitSignsStagedChange"] = { fg = tint(important, -60) }
hl["GitSignsStagedDelete"] = { fg = tint(error, -60) }
hl["GitSignsStagedChangedelete"] = { link = "GitSignsStagedChange" }
hl["GitSignsStagedTopdelete"] = { link = "GitSignsStagedDelete" }
hl["GitSignsStagedUntracked"] = { link = "GitSignsStagedAdd" }
hl["GitSignsCurrentLineBlame"] = { link = "NonText" }
hl["GitSignsAddInline"] = { link = "DiffAdd" }
hl["GitSignsAddLnInline"] = { fg = "fg", bg = tint(hl["DiffAdd"].bg, 75) }
hl["GitSignsDeleteInline"] = { link = "DiffDelete" }
hl["GitSignsDeleteLnInline"] = { fg = "fg", bg = tint(hl["DiffDelete"].bg, 75) }
hl["GitSignsChangeInline"] = { link = "DiffText" }
hl["GitSignsChangeLnInline"] = { link = "DiffChange" }
hl["GitSignsDeleteVirtLn"] = { link = "DiffDelete" }
hl["GitSignsDeleteVirtLnInLine"] = { link = "DiffDelete" }
hl["GitSignsVirtLnum"] = { link = "LineNr" }

-- stevearc/aerial.nvim
hl["AerialLine"] = { link = "PmenuSel" }
hl["AerialNormal"] = { link = "" }

-- folke/edgy.nvim
hl["EdgyIcon"] = { fg = fg_inactive, bg = hl["NormalFloat"]["bg"] }
hl["EdgyIconActive"] = { link = "EdgyIcon" }
hl["EdgyTitle"] = { link = "NormalFloat" }
hl["EdgyWinBar"] =
  { bg = hl["NormalFloat"]["bg"], underline = true, sp = bg_block }

-- hrsh7th/nvim-cmp
hl["CmpItemAbbrDeprecated"] = { strikethrough = true }
hl["CmpItemAbbrMatch"] = { link = "PmenuMatch" }
hl["CmpItemKind"] = { link = "Keyword" }

-- saghen/blink.cmp
hl["BlinkCmpDocBorder"] = { link = "FloatBorder" }
hl["BlinkCmpDocSeparator"] = { link = "NonText" }
hl["BlinkCmpGhostText"] = { link = "NonText" }
hl["BlinkCmpKind"] = { fg = important }
-- hl["BlinkCmpKindEnum"] = { fg = important }
-- hl["BlinkCmpKindFile"] = { fg = important }
-- hl["BlinkCmpKindText"] = { fg = important }
-- hl["BlinkCmpKindUnit"] = { fg = important }
-- hl["BlinkCmpKindClass"] = { fg = important }
-- hl["BlinkCmpKindColor"] = { fg = important }
-- hl["BlinkCmpKindEvent"] = { fg = important }
-- hl["BlinkCmpKindField"] = { fg = important }
-- hl["BlinkCmpKindValue"] = { fg = important }
-- hl["BlinkCmpKindFolder"] = { fg = important }
-- hl["BlinkCmpKindMethod"] = { fg = important }
-- hl["BlinkCmpKindModule"] = { fg = important }
-- hl["BlinkCmpKindStruct"] = { fg = important }
-- hl["BlinkCmpKindKeyword"] = { fg = important }
-- hl["BlinkCmpKindSnippet"] = { fg = important }
-- hl["BlinkCmpKindConstant"] = { fg = important }
-- hl["BlinkCmpKindFunction"] = { fg = important }
-- hl["BlinkCmpKindOperator"] = { fg = important }
-- hl["BlinkCmpKindProperty"] = { fg = important }
-- hl["BlinkCmpKindVariable"] = { fg = important }
-- hl["BlinkCmpKindInterface"] = { fg = important }
-- hl["BlinkCmpKindReference"] = { fg = important }
-- hl["BlinkCmpKindEnumMember"] = { fg = important }
-- hl["BlinkCmpKindConstructor"] = { fg = important }
-- hl["BlinkCmpKindTypeParameter"] = { fg = important }
hl["BlinkCmpLabel"] = { fg = fgfloat }
hl["BlinkCmpLabelDetail"] = { link = "NonText" }
hl["BlinkCmpLabelDescription"] = { fg = fg_inactive_light }
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

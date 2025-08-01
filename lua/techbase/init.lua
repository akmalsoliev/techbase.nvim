local M = {}

local defaults = {
  italic_comments = false,
  transparent = false,
  overrides = {},
}

M.opts = vim.deepcopy(defaults)

function M.setup(opts)
  M.opts = vim.tbl_deep_extend("force", {}, defaults, opts or {})
end

function M.apply()
  local hl = vim.deepcopy(require("techbase.highlights"))

  hl["Comment"].italic = M.opts.italic_comments

  if M.opts.transparent then
    for _, g in ipairs({
      "FoldColumn",
      "Normal",
      "NormalNC",
      "NormalFloat",
      "SignColumn",
      "StatusLine",
      "TabLine",
      "TabLineFill"
    }) do
      if hl[g] then hl[g].bg = "NONE" end
    end
  end

  local extra
  if type(M.opts.overrides) == "function" then
    extra = M.opts.overrides(vim.deepcopy(hl))
  else
    extra = M.opts.overrides
  end

  if extra and next(extra) then hl = vim.tbl_deep_extend("force", hl, extra) end

  for group, spec in pairs(hl) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

return M

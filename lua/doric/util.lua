
local M = {}

function M.apply_highlights(groups)
  for group, spec in pairs(groups) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

function M.reset(name, background)
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.o.termguicolors = true
  vim.o.background = background
  vim.g.colors_name = name
end

return M

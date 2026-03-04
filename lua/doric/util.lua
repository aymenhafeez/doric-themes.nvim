
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
  vim.o.termguicolors = true
  if vim.o.background ~= background then
    vim.o.background = background
  end
  vim.g.colors_name = name
end

return M

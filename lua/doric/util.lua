
local M = {}

function M.apply_highlights(groups)
  for group, spec in pairs(groups) do
    local ok, err = pcall(vim.api.nvim_set_hl, 0, group, spec)
    if not ok then
      error("doric: failed to set highlight " .. vim.inspect(group) .. ": " .. tostring(err))
    end
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
  if vim.o.background ~= background then
    vim.o.background = background
  end
  vim.g.colors_name = name
end

return M

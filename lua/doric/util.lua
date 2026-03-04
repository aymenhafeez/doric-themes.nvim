
local M = {}

function M.apply_highlights(groups)
  local supports_treesitter_groups = vim.fn.has("nvim-0.8") == 1
  local invalid = {}
  local errors = {}
  for group, spec in pairs(groups) do
    if type(group) ~= "string" then
      table.insert(invalid, tostring(group))
      goto continue
    end
    if not supports_treesitter_groups and group:sub(1, 1) == "@" then
      goto continue
    end
    if not group:match("^[%w_@.]+$") then
      table.insert(invalid, group)
      goto continue
    end
    local ok = pcall(vim.api.nvim_set_hl, 0, group, spec)
    if not ok then
      table.insert(errors, group)
    end
    if not ok and group:sub(1, 1) == "@" then
      goto continue
    end
    ::continue::
  end
  if #invalid > 0 then
    vim.g.doric_invalid_groups = invalid
  end
  if #errors > 0 then
    vim.g.doric_hl_errors = errors
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

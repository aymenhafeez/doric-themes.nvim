local M = {}

local defaults = {
  light = "doric-light",
  dark = "doric-dark",
  styles = {
    italic = true,
    bold = true,
  },
}

local options = {
  light = defaults.light,
  dark = defaults.dark,
  styles = vim.tbl_deep_extend("force", {}, defaults.styles),
}

function M.setup(opts)
  options = vim.tbl_deep_extend("force", {}, defaults, opts or {})
end

function M.resolve(background)
  if background == "dark" then
    return options.dark or defaults.dark
  end
  return options.light or defaults.light
end

function M.defaults()
  return defaults
end

function M.options()
  return options
end

return M

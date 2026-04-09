local M = {}

function M.apply_highlights(groups)
  for group, spec in pairs(groups) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

function M.set_terminal_colors(palette)
  -- Terminal colors (0-15)
  -- Dark colors
  vim.g.terminal_color_0 = palette.bg_shadow_intense
  vim.g.terminal_color_1 = palette.fg_red
  vim.g.terminal_color_2 = palette.fg_green
  vim.g.terminal_color_3 = palette.fg_yellow
  vim.g.terminal_color_4 = palette.fg_blue
  vim.g.terminal_color_5 = palette.fg_shadow_intense
  vim.g.terminal_color_6 = palette.fg_cyan
  vim.g.terminal_color_7 = palette.fg_shadow_subtle

  -- Bright colors
  vim.g.terminal_color_8 = palette.fg_shadow_intense
  vim.g.terminal_color_9 = palette.fg_red
  vim.g.terminal_color_10 = palette.fg_green
  vim.g.terminal_color_11 = palette.fg_yellow
  vim.g.terminal_color_12 = palette.fg_blue
  vim.g.terminal_color_13 = palette.fg_shadow_subtle
  vim.g.terminal_color_14 = palette.fg_cyan
  vim.g.terminal_color_15 = palette.fg_main
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

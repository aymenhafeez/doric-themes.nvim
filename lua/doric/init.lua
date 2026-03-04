
local palettes = require("doric.palettes")
local highlights = require("doric.highlights")
local util = require("doric.util")

local M = {}

function M.load(name)
  local palette = palettes[name]
  if not palette then
    error("doric: unknown theme '" .. name .. "'")
  end

  util.reset(name, palette.type)
  util.apply_highlights(highlights.build(palette))
end

return M

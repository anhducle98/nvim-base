-- local colorscheme = "tokyonight-night"
local colorscheme = "catppuccin"

local status_ok, _ = pcall(vim.cmd.colorscheme, colorscheme)
if not status_ok then
  return
end

require(colorscheme).setup {
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  term_colors = true,
  transparent_background = false,
  styles = {
    comments = {},
    conditionals = {},
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
  },
  color_overrides = {
    latte = {
      base = "#E1EEF5",
    },
    mocha = {
      base = "#000000",
      text = "#e5e5e5",
    },
  },
  highlight_overrides = {
    latte = function(_)
      return {
        NvimTreeNormal = { bg = "#D1E5F0" },
      }
    end,
    mocha = function(mocha)
      return {
        TabLineSel = { bg = mocha.pink },
        NvimTreeNormal = { bg = mocha.none },
        CmpBorder = { fg = mocha.surface2 },
      }
    end,
  },
}


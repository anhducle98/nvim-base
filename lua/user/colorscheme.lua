-- local colorscheme = "tokyonight-night"
-- local colorscheme = "catppuccin"
local colorscheme = "kanagawa"

require('kanagawa').setup({
  undercurl = false,
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = false },
  statementStyle = { bold = true },
  typeStyle = { italic = false },
  variablebuiltinStyle = { italic = false },
  specialReturn = true,       -- special highlight for the return keyword
  specialException = true,    -- special highlight for exception handling keywords
  transparent = false,        -- do not set background color
  dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
  globalStatus = false,       -- adjust window separators highlight for laststatus=3
  terminalColors = true,      -- define vim.g.terminal_color_{0,17}
  colors = {},
  overrides = {},
  theme = "default"           -- Load "default" theme or the experimental "light" theme
})

local status_ok, _ = pcall(vim.cmd.colorscheme, colorscheme)
if not status_ok then
  return
end

-- require("catppuccin").setup {
--   flavour = "mocha", -- latte, frappe, macchiato, mocha
--   term_colors = true,
--   transparent_background = false,
--   styles = {
--     comments = {},
--     conditionals = {},
--     loops = {},
--     functions = {},
--     keywords = {},
--     strings = {},
--     variables = {},
--     numbers = {},
--     booleans = {},
--     properties = {},
--     types = {},
--   },
--   color_overrides = {
--     latte = {
--       base = "#E1EEF5",
--     },
--     mocha = {
--       -- base = "#000000",
--       text = "#e5e5e5",
--     },
--   },
--   highlight_overrides = {
--     latte = function(_)
--       return {
--         NvimTreeNormal = { bg = "#D1E5F0" },
--       }
--     end,
--     mocha = function(mocha)
--       return {
--         TabLineSel = { bg = mocha.pink },
--         -- NvimTreeNormal = { bg = mocha.none },
--         CmpBorder = { fg = mocha.surface2 },
--       }
--     end,
--   },
-- }


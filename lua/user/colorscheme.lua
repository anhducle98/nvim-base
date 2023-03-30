-- local colorscheme = "tokyonight-night"
-- local colorscheme = "catppuccin"
local colorscheme = "kanagawa"


-- Default options:
require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = false },
    functionStyle = {},
    keywordStyle = { italic = false },
    statementStyle = { bold = true },
    typeStyle = { italic = false },
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {}
    end,
    theme = "wave",
    background = {
        dark = "wave",
        light = "lotus"
    },
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


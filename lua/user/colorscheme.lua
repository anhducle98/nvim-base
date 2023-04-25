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
    transparent = true,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
      palette = {},
      theme = {
        all = {
          ui = {
            bg_gutter = "none",
          }
        }
      },
    },
    overrides = function(colors) -- add/modify highlights
        local theme = colors.theme
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },

          -- Save an hlgroup with dark background and dimmed foreground
          -- so that you can use it where your still want darker windows.
          -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

          -- Popular plugins that open floats will link to NormalFloat by default;
          -- set their background accordingly if you wish to keep them dark and borderless
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

          TelescopeTitle = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },
        }
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


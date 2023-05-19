-- Setup nvim-cmp.
local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
  return
end

npairs.setup {
  check_ts = true, -- treesitter integration
  disable_filetype = { "TelescopePrompt" },
  ts_config = {
    lua = { "string", "source" },
    javascript = { "string", "template_string" },
    java = false,
  },

  fast_wrap = {},
  ignored_next_char = "[%w%.]", -- will ignore alphanumeric and `.` symbol
  enable_check_bracket_line = true,
}

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done {})

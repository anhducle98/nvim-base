local status_ok, neoscroll = pcall(require, "neoscroll")
if not status_ok then
  return
end

neoscroll.setup({
    easing_function = "quartic" -- Default easing function
    -- Set any other options as needed
})

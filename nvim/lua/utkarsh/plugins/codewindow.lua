return {
  "gorbit99/codewindow.nvim",
  config = function()
    local codewindow = require("codewindow")
    codewindow.setup({
      activate_in_terminals = true,
      minimap_width = 32,
      width_multiplier = 4,
      screen_bounds = "background",
    })
    codewindow.apply_default_keybinds()
  end,
}

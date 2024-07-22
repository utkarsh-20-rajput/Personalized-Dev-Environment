return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "catppuccin/catppuccin", "famiu/bufdelete.nvim" },
  version = "*",
  config = function()
    local mocha = require("catppuccin.palettes").get_palette("mocha")
    require("bufferline").setup({
      highlights = require("catppuccin.groups.integrations.bufferline").get({
        styles = { "italic", "bold" },
        custom = {
          all = {
            fill = { bg = "#11111b" },
            offset_separator = {
              fg = "#313244",
              bg = "#313244",
            },
          },
          mocha = {
            background = { fg = mocha.text },
          },
        },
      }),
      options = {
        mode = "buffers",
        indicator = {
          icon = "║ ",
          style = "icon",
        },
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true,
          },
        },
      },
    })
  end,
}

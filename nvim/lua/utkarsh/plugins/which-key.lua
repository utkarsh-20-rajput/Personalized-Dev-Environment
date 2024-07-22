return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  -- init = function()
  --   vim.o.timeout = true
  --   vim.o.timeoutlen = 5000
  -- end,
  opts = {
    -- custom configuration comes here
    -- leave empty for default
    preset = "modern", -- modern, classic, helix
    spec = {},
    notify = true,
    win = {
      wo = {
        winblend = 30,
      },
    },
    sort = { "local", "order", "group", "alphanum", "mod", "lower", "icase" },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}

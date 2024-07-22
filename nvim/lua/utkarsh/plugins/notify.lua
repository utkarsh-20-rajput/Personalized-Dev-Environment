return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      timeout = 1000,
      stages = "fade",
      render = "wrapped-compact",
      fps = 60,
      top_down = true,
    })
    vim.keymap.set({ "n", "v" }, "<leader>nn", function()
      require("notify").dismiss({ silent = true, pending = true })
    end, { desc = "Delete All Notifications" })
  end,
}

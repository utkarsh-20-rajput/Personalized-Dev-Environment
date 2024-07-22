return {
  "mrjones2014/smart-splits.nvim",
  config = function()
    local keymap = vim.keymap

    -- recommended mappings
    -- resizing splits
    -- these keymaps will also accept a range,
    -- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
    keymap.set("n", "<A-j>", require("smart-splits").resize_down, { desc = "Resize Split Down" })
    keymap.set("n", "<A-k>", require("smart-splits").resize_up, { desc = "Resize Split Up" })
    keymap.set("n", "<A-l>", require("smart-splits").resize_right, { desc = "Resize Split Right" })
    keymap.set("n", "<A-h>", require("smart-splits").resize_left, { desc = "Resize Split Left" })
    -- moving between splits
    keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left, { desc = "Move To Left Split" })
    keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down, { desc = "Move To Right Split" })
    keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up, { desc = "Move To Top Split" })
    keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right, { desc = "Move To Bottom Split" })
    keymap.set("n", "<C-\\>", require("smart-splits").move_cursor_previous, { desc = "Move to Previous Split" })
    -- swapping buffers between windows
    keymap.set("n", "<leader><leader>h", require("smart-splits").swap_buf_left, { desc = "Swap Buffer Left" })
    keymap.set("n", "<leader><leader>j", require("smart-splits").swap_buf_down, { desc = "Swap Buffer Down" })
    keymap.set("n", "<leader><leader>k", require("smart-splits").swap_buf_up, { desc = "Swap Buffer Up" })
    keymap.set("n", "<leader><leader>l", require("smart-splits").swap_buf_right, { desc = "Swap Buffer Right" })
  end,
}

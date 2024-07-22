return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    -- import comment plugin safely
    local comment = require("Comment")

    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

    -- enable comment
    comment.setup({
      -- for commenting tsx, jsx, svelte, html files
      pre_hook = ts_context_commentstring.create_pre_hook(),
      padding = true,
      sticky = true,
      ignore = "^$", --[[ function() ]]
      --   -- Only ignore empty lines for lua files
      --   if vim.bo.filetype == 'lua' then
      --       return '^$'
      --   end
      toggler = { line = "gcc", block = "gbc" },
      opleader = { line = "gc", block = "gb" },
      extra = { above = "gcO", below = "gco", eol = "gcA" },
      mappings = { basic = true, extra = true },
      post_hook = function(ctx)
        if ctx.range.srow == ctx.range.erow then
          -- do something with the current line
        else
          -- do something with lines range
        end
      end,
    })
  end,
}

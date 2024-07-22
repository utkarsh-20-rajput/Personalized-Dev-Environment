return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- set header
    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[:::::::::::::::::::::::::::: Utkarsh Rajput :::::::::::::::::::::::::::]],
    }

    -- set menu
    dashboard.section.buttons.val = {
      dashboard.button("⌨  KeyBinds  ", "     Options", "<cmd>lua require('telescope.builtin').keymaps()<CR>"),
      dashboard.button("----------------", "----------------", "<cmd>e ~/.config/nvim<CR>"),
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("<space> ee", "  > File Explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("<space> ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("<space> fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("<space> wr", "󰁯  > Restore Session", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "  > Quit NeoVim", "<cmd>qa<CR>"),
      dashboard.button("----------------", "----------------", "<cmd>e ~/.wezterm.lua<CR>"),
    }

    -- set footer
    dashboard.section.footer.val = os.date("  %d-%m-%Y    %H:%M")

    -- send config to alpha
    alpha.setup(dashboard.opts)

    -- disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}

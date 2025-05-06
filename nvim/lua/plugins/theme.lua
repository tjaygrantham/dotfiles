return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      dark_variant = "moon",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
  {
    "cormacrelf/dark-notify",
    init = function()
      require("dark_notify").run()
    end,
  },
  {
    "4e554c4c/darkman.nvim",
    event = "VimEnter",
    build = "go build -o bin/darkman.nvim",
    opts = {
      change_background = true,
    },
  },
}

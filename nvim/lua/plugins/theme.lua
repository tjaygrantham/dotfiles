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
}

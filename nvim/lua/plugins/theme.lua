return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
  {
    "akinsho/bufferline.nvim",
    event = "ColorScheme",
    config = function()
      require("bufferline").setup()
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "ColorScheme",
    config = function()
      require("lualine").setup({
        options = {
          --- @usage 'rose-pine' | 'rose-pine-alt'
          theme = "rose-pine",
        },
      })
    end,
  },
}

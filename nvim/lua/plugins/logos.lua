return {
  {
    dir = "~/theos/vendor/logos/extras/vim",
    config = function()
      vim.filetype.add({
        extension = {
          x = "logos",
          xm = "logos",
        },
      })

      require("conform").setup({
        formatters = {
          logos_format = {
            command = "python3",
            args = { vim.fn.expand("~/logos-format/logos-format.py"), "--assume-filename", "objc" },
          },
        },
        formatters_by_ft = {
          logos = { "logos_format" },
        },
      })
    end,
  },
}

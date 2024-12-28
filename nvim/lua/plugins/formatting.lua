return {
  {
    dir = vim.env.THEOS .. "/vendor/logos/extras/vim",
    cond = vim.fn.isdirectory(vim.env.THEOS .. "/vendor/logos/extras/vim") ~= 0,
    init = function()
      vim.filetype.add({
        extension = {
          x = "logos",
          xm = "logos",
        },
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    cond = vim.fn.isdirectory(vim.env.HOME .. "/logos-format"),
    opts = {
      formatters = {
        logos_format = {
          command = "python3",
          args = { vim.fn.expand(vim.env.HOME .. "/logos-format/logos-format.py"), "--assume-filename", "objc" },
        },
      },
      formatters_by_ft = {
        logos = { "logos_format" },
      },
    },
  },
}

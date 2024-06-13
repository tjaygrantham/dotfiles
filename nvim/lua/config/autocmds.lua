-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if require("lazy.status").has_updates then
      require("lazy").update({ show = false })
    end
  end,
})

vim.filetype.add({
  extension = {
    x = "logos",
    xm = "logos",
  },
})

require("dark_notify").run()


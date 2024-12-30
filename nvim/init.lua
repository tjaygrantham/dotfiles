-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
if vim.loop.os_uname().sysname == "Darwin" then
  require("dark_notify").update()
end

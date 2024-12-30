-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
if vim.fn.has("macunix") then
  require("dark_notify").update()
end

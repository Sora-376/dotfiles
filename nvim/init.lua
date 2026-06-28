if vim.loader then
  vim.loader.enable()
end

require("lazy.basic")
require("option.basic")
require("option.plugins")
require("lsp.basic")
require("keymap.basic")

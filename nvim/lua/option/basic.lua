-- Options
local options = {
  number = true,
  relativenumber = true,
  cursorline = true,
  tabstop = 4,
  shiftwidth = 4,
  expandtab = true,
  showtabline = 4,
  wrap = false,
  smartcase = true,
  smartindent = true,
  pumheight = 10,
  completeopt = {"menuone", "noselect"},
  hlsearch = true,
  timeoutlen = 1000,
  guifont = "MesloLGS NF",
  termguicolors = true,
  mouse = ""
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

-- Global
local global = {
  loaded_netrw = 1,
  loaded_netrwPlugin = 1,
}

for key, value in pairs(global) do
    vim.g[key] = value
end

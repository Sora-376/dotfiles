return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    priority = 1000,
    opt = {}
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    lazy = false,
    priority = 1000,
    opt = {}
  },
  {
    "hrsh7th/cmp-buffer",
    lazy = false,
    priority = 1000,
    opt = {}
  },
  {
    "hrsh7th/cmp-path",
    lazy = false,
    priority = 1000,
    opt = {}
  },
  {
    "hrsh7th/cmp-cmdline",
    lazy = false,
    priority = 1000,
    opt = {}
  },
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
    priority = 1000,
    opt = {}
  },
  {
    "saadparwaiz1/cmp_luasnip",
    lazy = false,
    priority = 1000,
    opt = {}
  },
  {
    "L3MON4D3/LuaSnip",
    lazy = false,
    priority = 1000,
    opt = {}
  },
  {
    "petertriho/cmp-git",
    dependencies = { 'hrsh7th/nvim-cmp' },
    opts = {
        -- options go here
    },
    init = function()
        table.insert(require("cmp").get_config().sources, { name = "git" })
    end
  }
}

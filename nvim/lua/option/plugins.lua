-- Neotree
require("neo-tree").setup({
  filesystem = {
    follow_current_file = { enabled = true },
    use_libuv_file_watcher = true,
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
    },
  },

  window = {
    width = 35,
    mappings = {
      ["l"] = "open"
    }
  },
})

-- lualine
require("lualine").setup()

-- Toggleterm
require("toggleterm").setup()

-- Indent Blankline
require("ibl").setup()

-- Tokyo Night
require("tokyonight").setup({
  -- use the night style
  style = "night",
  -- disable italic for functions
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
    functions = {}
  },
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end
})
vim.cmd[[colorscheme tokyonight-night]]

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "frappe", -- latte, frappe, macchiato, mocha
      no_italic = true,
      custom_highlights = function(colors)
        return {
          LspInlayHint = {
            bg = "NONE",
            fg = colors.surface2, -- Subtle contrast color without a solid box
          },
        }
      end,
      integrations = {
        gitsigns = true,
        treesitter = true,
        mini = { enabled = true },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
    },
  },
}

return {
  -- Which-key delay adjustment
  {
    "folke/which-key.nvim",
    opts = {
      delay = 200, -- Matches Zed delay_ms: 200
    },
  },

  -- Scope-aware indent guide coloring (Matches indent_aware)
  {
    "nvim-mini/mini.indentscope",
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
  },

  -- Sticky Scroll (Matches sticky_scroll: { enabled: true })
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "LazyFile",
    opts = { mode = "cursor", max_lines = 3 },
  },
}

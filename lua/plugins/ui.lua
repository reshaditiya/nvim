return {
  -- Which-key delay adjustment
  {
    "folke/which-key.nvim",
    opts = {
      delay = 200, -- Matches Zed delay_ms: 200
    },
  },

  -- Sticky Scroll (Matches sticky_scroll: { enabled: true })
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "LazyFile",
    opts = { mode = "cursor", max_lines = 3 },
  },
}

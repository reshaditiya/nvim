return {
  "folke/flash.nvim",
  keys = {
    -- Disable the 's' keybinding for flash
    { "s", mode = { "n", "x", "o" }, false },
    -- Disable Flash Treesitter on 'S' to restore traditional line substitute (cc)
    { "S", mode = { "n", "x", "o" }, false },
  },
  opts = {
    modes = {
      char = {
        -- Disable multi line search with f/F t/T
        multi_line = false,
        highlight = {
          backdrop = false,
        }
      },
    },
  },
}

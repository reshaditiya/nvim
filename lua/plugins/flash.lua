return {
  "folke/flash.nvim",
  keys = {
    -- Disable the 's' keybinding for flash
    { "s", mode = { "n", "x", "o" }, false },
    -- Disable Flash Treesitter on 'S' to restore traditional line substitute (cc)
    { "S", mode = { "n", "x", "o" }, false },
  },
}

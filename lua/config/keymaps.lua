-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle format-on-save (modified only) for the current buffer
Snacks.toggle({
  name = "Format Modified (buffer)",
  get = function()
    return not vim.b.format_modified_disable
  end,
  set = function(state)
    vim.b.format_modified_disable = not state
  end,
}):map("<leader>um")

-- Toggle format-on-save (modified only) globally
Snacks.toggle({
  name = "Format Modified (global)",
  get = function()
    return not vim.g.format_modified_disable
  end,
  set = function(state)
    vim.g.format_modified_disable = not state
  end,
}):map("<leader>uM")

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Scrolling & Wrapping (LazyVim defaults: number, relativenumber, tabstop/shiftwidth=2, expandtab)
vim.opt.scrolloff = 7
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

-- Clipboard (Set to never use system clipboard, matching Zed settings)
vim.opt.clipboard = ""

-- Prettier is the formatter (see lua/plugins/tools.lua); eslint LSP
-- should not format too (would double-format with prettier).
vim.g.lazyvim_eslint_auto_format = false

-- Disable animation (LazyVim defaults to true)
vim.g.snacks_animate = false

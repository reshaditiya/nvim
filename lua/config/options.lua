-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- Tabs & Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Scrolling & Wrapping
vim.opt.scrolloff = 7
vim.opt.wrap = true

-- Clipboard (Set to never use system clipboard, matching Zed settings)
vim.opt.clipboard = ""

-- Inlay hints (Enabled by default in LazyVim)
vim.lsp.inlay_hint.enable(true)

-- Warp & line break
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

# nvim config

Personal [LazyVim](https://github.com/LazyVim/LazyVim) config.

## Highlights

- **Colorscheme:** catppuccin `frappe`, `no_italic` (see `lua/plugins/colorscheme.lua`)
- **Languages:** Go, JSON, Markdown, SQL, Tailwind, TOML, TypeScript (`lazyvim.json` extras; `vtsls` tweaks in `lua/plugins/lsp.lua`)
- **Indent:** `mini-indentscope` only (`│`, `try_as_border`) — `indent-blankline` not enabled
- **Formatting:** LazyVim native whole-file via `conform.nvim` — `<leader>cf` format, `<leader>uf` buffer / `<leader>uF` global toggle. No custom partial/range formatter.
- **Clipboard:** `clipboard=""` (never system clipboard, matches Zed) — see `lua/config/options.lua`
- **Picker:** Snacks picker/explorer shows hidden + ignored files (`lua/plugins/snacks.lua`)
- **Extras:** `yanky`, `dot`, `gh`, `mini-hipatterns`

## Notes

- Run `:Lazy sync` after pulling changes; `lazy-lock.json` is pinned.
- `flash.nvim`: `s/S` disabled to keep vanilla substitute; `f/t` single-line only.
- `which-key` delay 200ms, `snacks_animate` disabled, `scrolloff=7`, `wrap+linebreak+breakindent` on.

See `https://www.lazyvim.org/` for upstream docs.

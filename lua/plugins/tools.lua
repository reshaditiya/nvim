-- Central Mason / formatter / linter wiring so tool choice is editable here
-- instead of hidden inside LazyVim extras or :Mason UI.
-- LSP servers themselves come from extras (vtsls, eslint, tailwindcss,
-- gopls) — this file ensures their binaries + lint/format tools are
-- installed, and pins which formatter/linter runs per filetype.
return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- JS / TS / React
        "vtsls",
        "eslint-lsp",
        "eslint_d",
        "prettier",
        "tailwindcss-lsp",
        -- Go
        "gopls",
        "goimports",
        "gofumpt",
        "golangci-lint",
        -- SQL (Postgres/SQLite via .sqlfluff project config)
        "sqlfluff",
      },
    },
  },

  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      -- Mostly Prettier for JS/TS/React
      opts.formatters_by_ft.javascript = { "prettier" }
      opts.formatters_by_ft.typescript = { "prettier" }
      opts.formatters_by_ft.javascriptreact = { "prettier" }
      opts.formatters_by_ft.typescriptreact = { "prettier" }
      -- Go: strict
      opts.formatters_by_ft.go = { "goimports", "gofumpt" }
      -- SQL: let project .sqlfluff / [sqlfluff] decide the dialect
      -- (overrides sql extra's --dialect=ansi hard-coding)
      opts.formatters_by_ft.sql = { "sqlfluff" }
      opts.formatters = opts.formatters or {}
      opts.formatters.sqlfluff = { args = { "format", "-" } }
    end,
  },

  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft = opts.linters_by_ft or {}
      opts.linters_by_ft.javascript = { "eslint_d" }
      opts.linters_by_ft.typescript = { "eslint_d" }
      opts.linters_by_ft.javascriptreact = { "eslint_d" }
      opts.linters_by_ft.typescriptreact = { "eslint_d" }
      -- Also cover common frontend test files if present
      opts.linters_by_ft["javascript.jsx"] = { "eslint_d" }
      opts.linters_by_ft["typescript.tsx"] = { "eslint_d" }
      opts.linters_by_ft.go = { "golangcilint" }
      opts.linters_by_ft.sql = { "sqlfluff" }
    end,
  },
}

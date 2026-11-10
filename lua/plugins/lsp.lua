return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            typescript = {
              updateImportsOnFileMove = { enabled = "always" },
            },
            javascript = {
              updateImportsOnFileMove = { enabled = "always" },
            },
          },
        },
      },
    },
  },
  -- Configure Mason to skip auto-installing lua-language-server
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      -- Filter out lua-language-server / lua_ls from Mason's auto-install list
      opts.ensure_installed = vim.tbl_filter(function(item)
        return item ~= "lua-language-server" and item ~= "lua_ls"
      end, opts.ensure_installed)
    end,
  },

  -- Configure nvim-lspconfig to point to the Termux system binary
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          mason = false, -- Prevent Mason from managing lua_ls
          cmd = { "lua-language-server" },
        },
      },
    },
  },
}

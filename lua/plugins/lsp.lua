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
}

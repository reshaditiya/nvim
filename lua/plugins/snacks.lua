return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        -- Show hidden/ignored files intentionally (includes node_modules/.env etc.)
        files = {
          hidden = true,
          ignored = true,
        },
        explorer = {
          hidden = true,
          ignored = true,
          win = {
            list = {
              wo = {
                number = true,
                relativenumber = true,
              },
            },
          },
        },
      },
    },
  },
}

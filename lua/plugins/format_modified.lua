return {
  {
    "stevearc/conform.nvim",
    init = function()
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("FormatModifiedOnly", { clear = true }),
        callback = function(args)
          -- Skip if disabled globally or for this buffer
          if vim.g.format_modified_disable or vim.b[args.buf].format_modified_disable then
            return
          end

          local ok, gitsigns = pcall(require, "gitsigns")
          if not ok then return end

          local hunks = gitsigns.get_hunks(args.buf)
          if not hunks or #hunks == 0 then return end

          for i = #hunks, 1, -1 do
            local hunk = hunks[i]
            if hunk.type ~= "delete" and hunk.added.count > 0 then
              local first = hunk.added.start
              local last = first + hunk.added.count - 1
              local last_text = vim.api.nvim_buf_get_lines(args.buf, last - 1, last, true)[1] or ""
              require("conform").format({
                bufnr = args.buf,
                async = false,
                lsp_format = "fallback",
                range = {
                  start = { first, 0 },
                  ["end"] = { last, #last_text },
                },
              })
            end
          end
        end,
      })

      -- Toggle for the current buffer
      vim.keymap.set("n", "<leader>uf", function()
        vim.b.format_modified_disable = not vim.b.format_modified_disable
        vim.notify(
          "Format-on-save (modified) " .. (vim.b.format_modified_disable and "disabled" or "enabled") .. " for this buffer"
        )
      end, { desc = "Toggle format modified (buffer)" })

      -- Toggle globally
      vim.keymap.set("n", "<leader>uF", function()
        vim.g.format_modified_disable = not vim.g.format_modified_disable
        vim.notify(
          "Format-on-save (modified) " .. (vim.g.format_modified_disable and "disabled" or "enabled") .. " globally"
        )
      end, { desc = "Toggle format modified (global)" })
    end,
  },
}

-- Formatters via conform. Run :ConformInfo to see what is wired.
--
-- Format-on-save is deliberately limited to files we own end to end
-- (Go, templ, Lua, shell). The web repos (Next.js, Astro, Vite) carry their
-- own prettier configs, so a save there must not rewrite the file; use
-- <leader>fm to format manually when wanted.
local options = {
  formatters_by_ft = {
    go = { "goimports", "gofumpt" },
    templ = { "templ" },
    lua = { "stylua" },
    sh = { "shfmt" },

    -- web: prettierd, manual only (see format_on_save below)
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    css = { "prettierd" },
    html = { "prettierd" },
    json = { "prettierd" },
    yaml = { "prettierd" },
    markdown = { "prettierd" },
  },

  format_on_save = function(bufnr)
    local allowed = { go = true, templ = true, lua = true, sh = true }
    if not allowed[vim.bo[bufnr].filetype] then
      return
    end
    return { timeout_ms = 1000, lsp_fallback = true }
  end,
}

return options

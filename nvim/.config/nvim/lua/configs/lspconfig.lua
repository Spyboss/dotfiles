require("nvchad.configs.lspconfig").defaults()

-- gopls: the Go language server, with staticcheck linting built in (no
-- golangci-lint needed in the editor). See :h gopls or gopls settings docs.
vim.lsp.config("gopls", {
  settings = {
    gopls = {
      staticcheck = true,
      analyses = {
        unusedparams = true,
      },
      usePlaceholders = true,
    },
  },
})

-- html server also serves templ files (templ docs recommend this)
vim.lsp.config("html", {
  filetypes = { "html", "templ" },
})

-- tailwind inside templ and astro files too; templ counts as html
vim.lsp.config("tailwindcss", {
  filetypes = {
    "templ", "astro", "html", "css",
    "javascript", "javascriptreact", "typescript", "typescriptreact",
  },
  init_options = {
    userLanguages = { templ = "html" },
  },
})

-- lua: stop lua_ls complaining about the `vim` global when editing this config
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

local servers = {
  -- go / templ (InvoiceApp-go)
  "gopls",
  "templ",

  -- web (Next.js, React, Astro, Vite projects)
  "ts_ls",
  "eslint",
  "tailwindcss",
  "html",
  "cssls",
  "jsonls",

  -- config / infra
  "lua_ls",
  "yamlls",
  "bashls",
}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- blink.cmp replaces nvim-cmp. NvChad ships a first-class spec that disables
  -- nvim-cmp, reuses LuaSnip + friendly-snippets + autopairs, and keeps the
  -- same keys (<CR> accept, <Tab> next). v1 stable, prebuilt Rust fuzzy matcher.
  { import = "nvchad.blink.lazyspec" },

  -- pinned to main: nvim-treesitter's master is frozen (last commit 2026-03)
  -- and NvChad v2.5 targets the main-branch API (:TSInstallAll).
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate | TSInstallAll",
    opts = {
      ensure_installed = {
        "go", "templ", "html", "css",
        "javascript", "typescript", "tsx",
        "json", "yaml", "bash", "toml",
        "dockerfile", "sql",
        "markdown", "markdown_inline", "python",
      },
    },
  },

  -- diagnostics panel: <leader>xx
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    opts = {},
  },

  { import = "plugins.dap" },
}

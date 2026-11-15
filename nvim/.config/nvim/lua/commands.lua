-- nvim-lspconfig's plugin/lspconfig.lua bails out on Neovim 0.11+ because
-- nvim now ships its own :lsp command, so :LspInfo / :LspLog / :LspStart /
-- :LspStop / :LspRestart are never registered. Recreate them here as thin
-- aliases so the old muscle memory keeps working.
--
-- Native equivalents: :lsp enable | :lsp disable | :lsp restart | :lsp stop
-- (they default to the current buffer's filetype / attached clients, same as
-- the commands they replace). :LspInfo and :LspLog have no native form.

local create = vim.api.nvim_create_user_command

-- Forward fargs (and drop the bang, which :lsp does not accept) to a native
-- :lsp subcommand.
local function forward(subcmd, info)
  local args = #info.fargs > 0 and (" " .. table.concat(info.fargs, " ")) or ""
  vim.cmd("lsp " .. subcmd .. args)
end

if vim.fn.exists ":LspInfo" == 0 then
  create("LspInfo", function()
    vim.cmd "checkhealth vim.lsp"
  end, { desc = "Alias to :checkhealth vim.lsp" })
end

if vim.fn.exists ":LspLog" == 0 then
  create("LspLog", function()
    local ok, path = pcall(vim.lsp.log.get_filename)
    if ok and path then
      vim.cmd("tabnew " .. vim.fn.fnameescape(path))
    end
  end, { desc = "Opens the Nvim LSP client log." })
end

if vim.fn.exists ":LspStart" == 0 then
  create("LspStart", function(info)
    forward("enable", info)
  end, { desc = "Enable and launch a language server (alias for :lsp enable)", nargs = "?" })
end

if vim.fn.exists ":LspStop" == 0 then
  create("LspStop", function(info)
    forward("stop", info)
  end, { desc = "Stop LSP clients on the current buffer (alias for :lsp stop)", nargs = "?" })
end

if vim.fn.exists ":LspRestart" == 0 then
  create("LspRestart", function(info)
    forward("restart", info)
  end, { desc = "Restart LSP clients on the current buffer (alias for :lsp restart)", nargs = "?" })
end

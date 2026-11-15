require "nvchad.autocmds"

-- turn inlay hints on for Go buffers automatically (gopls provides them)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    if vim.bo[args.buf].filetype == "go" then
      vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
    end
  end,
})

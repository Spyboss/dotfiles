-- Debug Adapter Protocol, scoped to Go. dlv must be on PATH (installed in the
-- mise Go bin). Start with <leader>dc inside a Go project.
return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      { "leoluz/nvim-dap-go", opts = {} },
      {
        "rcarriga/nvim-dap-ui",
        dependencies = { "nvim-neotest/nvim-nio" },
        opts = {},
      },
    },
    config = function()
      local dap, dapui = require "dap", require "dapui"

      dapui.setup {}
      require("dap-go").setup {}

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      local map = vim.keymap.set
      map("n", "<leader>db", dap.toggle_breakpoint, { desc = "DAP breakpoint" })
      map("n", "<leader>dc", dap.continue, { desc = "DAP start/continue" })
      map("n", "<leader>di", dap.step_into, { desc = "DAP step into" })
      map("n", "<leader>do", dap.step_over, { desc = "DAP step over" })
      map("n", "<leader>dO", dap.step_out, { desc = "DAP step out" })
      map("n", "<leader>dr", dap.repl.toggle, { desc = "DAP repl" })
      map("n", "<leader>du", dapui.toggle, { desc = "DAP ui toggle" })
      map("n", "<leader>dt", dap.terminate, { desc = "DAP terminate" })
    end,
  },
}

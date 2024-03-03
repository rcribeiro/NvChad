---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.dap = {
  plugin = true,
  n = {
   ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>", "Add breakpoint at line"},
   ["<leader>dr"] = {"<cmd> DapContinue <CR>", "Run or continue the debugger"},
   ["<leader>di"] = {"<cmd> DapStepInto <CR>", "Step into"},
   ["<leader>do"] = {"<cmd> DapStepOver <CR>", "Step over"},
   ["<leader>du"] = {"<cmd> DapStepOut <CR>", "Step out"},
   -- ["<leader>dr"] = { "<cmd>lua require'dap'.repl.toggle()<CR>", "Toggle REPL" },
   -- ["<leader>dl"] = { "<cmd>lua require'dap'.run_last()<CR>", "Run last" },
  }
}

-- M.dapui = {
--   plugin = true,
--   n = {
--     ["<leader>duo"] = { "<cmd>lua require'dapui'.open()<CR>", "Open DAP UI" },
--     ["<leader>duc"] = { "<cmd>lua require'dapui'.close()<CR>", "Close DAP UI" },
--   },
-- }


M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function ()
        require('dap-python').test_method()
      end
    }
  }
}

M.telescope = {
  n = {
    ["<leader>gf"] = { "<cmd> Telescope git_files <CR>", "Find Git files" },
 },
}

M.gitsigns = {
  plugin = true,

  n = {
   ["<leader>tb"] = {
      function()
        require("gitsigns").toggle_current_line_blame()
      end,
      "Toggle current line blame",
    },
  },
}

return M

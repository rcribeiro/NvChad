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
   ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

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

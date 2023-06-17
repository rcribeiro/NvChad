-- local autogroup = vim.api.nvim_create_augroup("LspFormatting", {}) -- commentend format on saving because of Achievers' python code are not formatted and it will cause a lot of changes
local null_ls = require('null-ls')

local opts = {
  sources = {
    null_ls.builtins.formatting.black, -- use <leader key> f m to format whole file
    null_ls.builtins.diagnostics.mypy,
    -- null_ls.builtins.diagnostics.ruff, -- commentend because of annoying "Line too long" warning
  },
  -- on_attach = function(client, bufnr) -- commentend format on saving because of Achievers' python code are not formatted and it will cause a lot of changes
  --   if client.supports_method("textDocument/formatting") then
  --     vim.api.nvim_clear_autocmds({
  --         group = autogroup,
  --         buffer = bufnr,
  --     })
  --     vim.api.nvim_create_autocmd("BufWritePre", {
  --       group = autogroup,
  --       buffer = bufnr,
  --       callback = function ()
  --         vim.lsp.buf.format({ bufnr = bufnr })
  --       end,
  --     })
  --   end
  -- end,
}

return opts

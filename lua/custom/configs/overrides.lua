local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "bash",
    "terraform"
  },
  indent = {
    enable = true,
    disable = {
      "python"
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
    "pkgbuild_language_server",

    "marksman"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.telescope = {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--hidden",  -- This line is added
      "-L",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
  },
}

return M

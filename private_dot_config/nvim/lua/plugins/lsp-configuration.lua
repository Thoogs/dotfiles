return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
--      local lspconfig = vim.lsp.config('lspconfig', {cmd={'true'}})
      vim.lsp.enable({
        "lua_ls",
        "ruff",
        "jedi_language_server",
        "gopls",
      })

--  local capabilities = require('cmp_nvim_lsp').default_capabilities()
--  -- enable lua LSP
--  lspconfig.lua_ls.setup({
--    capabilities = capabilities
--  })
--  -- enable ruff formatter and lsp
--  lspconfig.ruff.setup({
--    capabilities = capabilities
--  })
--  lspconfig.jedi_language_server.setup({
--    capabilities = capabilities
--  })
--  -- enable gopls
--  lspconfig.gopls.setup({
--    capabilities = capabilities
--  })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
    end,
  },
}

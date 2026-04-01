return {
  {
    "github/copilot.vim"
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    config = function()
      local copilot_chat = require("CopilotChat")
      copilot_chat.setup({
        model = 'gpt-4.1',           -- AI model to use
        temperature = 0.1,           -- Lower = focused, higher = creative
        window = {
          layout = 'float',
          width = 80, -- Fixed width in columns
          height = 20, -- Fixed height in rows
          border = 'rounded', -- 'single', 'double', 'rounded', 'solid'
          title = '🤖 AI Assistant',
          zindex = 100, -- Ensure window stays on top
        },
        headers = {
          user = '👤 You',
          assistant = '🤖 Copilot',
          tool = '🔧 Tool',
        },
        auto_insert_mode = true,     -- Enter insert mode when opening
      })
    end,
  },
  {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
  },
  },
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
          require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },
  {'glepnir/template.nvim', cmd = {'Template','TemProject'}, config = function()
    require('template').setup({
        temp_dir = "/home/thoogs/templates/",
        author = "Thoogs",
        email = "thoogs@pm.me",
    })
  end},
}

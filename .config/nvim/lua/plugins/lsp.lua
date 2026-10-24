return {
  -- LuaSnip
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    }
  },
  { "rafamadriz/friendly-snippets" },
  {
    "williamboman/mason-lspconfig.nvim",
  },

  -- for errors that overflow lsp
  -- {
  --   "Maan2003/lsp_lines.nvim",
  --   config = function()
  --     require("lsp_lines").setup()
  --   end,
  -- },

  -- Completion
  {
    "saghen/blink.cmp",
    version = "1.*",
    opts = {
      keymap = { preset = "default" },   -- <C-space> open, <C-y> accept, <C-n>/<C-p> move
      completion = {
        menu = { auto_show = false },    -- nothing pops up unless you press <C-space>
        ghost_text = { enabled = false },
        documentation = { auto_show = true },
      },
      sources = { default = { "lsp", "path" } },  -- no buffer/snippet noise
      signature = { enabled = true },    -- function signature hints, often the most useful part
    },
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = {
  --     "hrsh7th/cmp-nvim-lsp",
  --     "hrsh7th/cmp-buffer",
  --     "hrsh7th/cmp-path",
  --     "hrsh7th/cmp-cmdline",
  --     "L3MON4D3/LuaSnip",
  --     "saadparwaiz1/cmp_luasnip",
  --     "hrsh7th/cmp-emoji"
  --   },
  --   config = function() require("config.nvim-cmp") end
  -- },

  -- Outils Mason
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "pyright"
      }
    }
  },

  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },

  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
  }
}

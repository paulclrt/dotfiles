return {
  -- Thème
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({ flavor = "frappe", transparent_background = true })
      vim.cmd.colorscheme("catppuccin")
    end
  },

  --log editing
  {
    'fei6409/log-highlight.nvim',
    opts = {},
  },

  --git conflicts
  {'akinsho/git-conflict.nvim', version = "*", config = true},
  -- please read the doc to understand: https://github.com/akinsho/git-conflict.nvim?tab=readme-ov-file

  {
    'lewis6991/gitsigns.nvim',
    config = function ()
      require("gitsigns").setup({
        signcolumn = false,
        numhl = true,
        linehl = false,
      })
    end
  },

  {
    "sindrets/diffview.nvim"
  },

  -- Dépannage
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },

  -- Barre de statut
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          global_status = true,
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = {'branch' },
          lualine_c = { "filename" },
          lualine_x = { "lsp_status" },
          lualine_y = { 'encoding', 'fileformat', 'filetype'},
          lualine_z = { 'progress', "location" }
        },
        inactive_sections = {
          lualine_a = { },
          lualine_b = { },
          lualine_c = { "buffers" },
          lualine_x = { },
          lualine_y = { },
          lualine_z = { "location" }
        },
      })
    end
  }

}

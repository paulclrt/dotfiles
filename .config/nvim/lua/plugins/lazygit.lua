-- lua/plugins/lazygit.lua
-- Lazygit in a floating window (via snacks.nvim)
-- Needs the `lazygit` binary installed on your system.

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    lazygit = {
      -- Use your colorscheme's colors in lazygit, and open edited files
      -- in this Neovim instead of a nested one
      configure = true,
      win = {
        width = 0.9,
        height = 0.9,
        border = "rounded",
      },
    },
  },
  keys = {
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    { "<leader>gl", function() Snacks.lazygit.log() end, desc = "Lazygit: repo log" },
    { "<leader>gf", function() Snacks.lazygit.log_file() end, desc = "Lazygit: current file history" },
  },
}

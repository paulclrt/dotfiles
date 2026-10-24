-- lua/plugins/which-key.lua
-- which-key that ONLY shows window / split / tab shortcuts.
-- Your other mappings still work, they're just hidden from the popup.

local show_only = { "window", "tab", "split", "height", "width", "equal", "resize" }

return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "helix", -- compact popup in the corner
    delay = 300,

    -- Popup only appears for these prefixes
    triggers = {
      { "<leader>", mode = "n" },
      { "<c-w>", mode = "n" },
    },

    -- Hide every mapping whose description isn't about windows/tabs
    filter = function(mapping)
      local desc = (mapping.desc or ""):lower()
      for _, word in ipairs(show_only) do
        if desc:find(word, 1, true) then return true end
      end
      return false
    end,

    spec = {
      { "<leader>w", group = "windows" },
      { "<leader>t", group = "tabs" },
    },
  },

  keys = {
    -- Splits / windows ---------------------------------------------------
    { "<leader>wt", "<C-w>T", desc = "Move window to new tab" },

    -- Resize mode: press once, then tap + - < > = repeatedly, <Esc> to leave
    {
      "<leader>wr",
      function() require("which-key").show({ keys = "<c-w>", loop = true }) end,
      desc = "Resize mode (window)",
    },

    -- Resize with Alt + h/j/k/l (no Shift needed on AZERTY)
    { "<M-hjkl>", "<cmd>vertical resize -3<cr>", desc = "Resize: hjkl" },

    -- Tabs ---------------------------------------------------------------
    { "Ctrl+t", "<cmd>tabnew<cr>", desc = "New tab" },
    
    -- Lazygit ------------------------------------------------------------
    { "<leader>gg", "<cmd>", desc = "open lazygit"},
    { "<leader>gl", "<cmd>", desc = "open lazygit graph"},
    { "<leader>gg", "<cmd>", desc = "open lazygit idk"},
  },
}

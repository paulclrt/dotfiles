local opts = { noremap = true, silent = true }

-- Example keymaps
-- leader key and fs navigation
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) --> not anymore since using oil nvim

--inside file nav
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- delete, copy buffers
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("v", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- disable Q keymap
vim.keymap.set("n", "Q", "<nop>")

-- window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- resize windows
-- use the default alt+hjkl
-- vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
-- vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
-- vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
-- vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)


-- tab navigation and creation
-- Alt + AZERTY top row (& é " ' ( - è) = go to tab 1 to 7
local tab_keys = { "&", "é", '"', "'", "(", "-", "è" }

for i, key in ipairs(tab_keys) do
  vim.keymap.set("n", "<M-" .. key .. ">", function()
    if i <= vim.fn.tabpagenr("$") then
      vim.cmd("tabnext " .. i)
    else
      vim.notify("No tab " .. i, vim.log.levels.WARN)
    end
  end, { desc = "Go to tab " .. i })
end

-- Ctrl+t = new tab
vim.keymap.set("n", "<C-t>", "<cmd>tabnew<cr>", { desc = "New tab" })

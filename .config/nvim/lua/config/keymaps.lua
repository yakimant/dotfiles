-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("n", "<leader>y", function()
--   vim.fn.setreg(vim.v.register, vim.fn.expand("%:p") .. ":" .. vim.fn.line("."))
-- end, { desc = "Copy filename+line to clipboard" })

-- Yank relative path
vim.keymap.set("n", "<leader>yp", function()
  vim.fn.setreg("+", vim.fn.expand("%"))
end, { desc = "Yank relative file path" })

-- Yank absolute path
vim.keymap.set("n", "<leader>yP", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
end, { desc = "Yank absolute file path" })

-- Yank filename
vim.keymap.set("n", "<leader>yn", function()
  vim.fn.setreg("+", vim.fn.expand("%:t"))
end, { desc = "Yank filename" })

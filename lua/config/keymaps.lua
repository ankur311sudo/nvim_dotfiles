-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local opts = { noremap = true, silent = true }

-- quit file
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

vim.keymap.set("n", "<leader>ft", ":Floaterminal<CR>", { desc = "Toggle Floating Terminal" })

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)

vim.keymap.set("i", "kj", "<ESC>", { noremap = true, silent = true, desc = "Exit insert mode", nowait = true })
vim.keymap.set("v", "kj", "<ESC>", { noremap = true, silent = true, desc = "Exit visual mode", nowait = true })

-- Increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", opts) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", opts) -- decrement

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", opts) -- split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", opts) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts) -- close current split window

-- vim.keymap.set("n", "<leader>rr", function()
--   vim.cmd("write") -- auto save
--
--   -- full file path
--   local file = vim.fn.expand("%:p")
--   -- output name
--   local output = vim.fn.expand("%:t:r")
--
--   -- compile + run command
--   local cmd = string.format("clear && g++ -std=c++17 %s -o %s && ./%s", file, output, output)
--
--   -- open floating terminal (instantly)
--   vim.cmd("Floaterminal")
--
--   vim.fn.chansend(vim.b.terminal_job_id, cmd .. "\n")
-- end, { desc = "Fast C++ Run (Floating)" })
--

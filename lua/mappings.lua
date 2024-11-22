require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local smart_splits = require('smart-splits')

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>q", "<cmd>q!<cr>", { desc = "quit window" })

-- NOTE: MAPPINGS FOR SMART-SPLITS
map('n', '<C-Left>', smart_splits.resize_left)
map('n', '<C-Down>', smart_splits.resize_down)
map('n', '<C-Up>', smart_splits.resize_up)
map('n', '<C-Right>', smart_splits.resize_right)
  -- moving between splits
map('n', '<C-h>', smart_splits.move_cursor_left)
map('n', '<C-j>', smart_splits.move_cursor_down)
map('n', '<C-k>', smart_splits.move_cursor_up)
map('n', '<C-l>', smart_splits.move_cursor_right)
map('n', '<C-\\>', smart_splits.move_cursor_previous)
  -- swapping buffers between windows
map('n', '<leader><leader>h', smart_splits.swap_buf_left)
map('n', '<leader><leader>j', smart_splits.swap_buf_down)
map('n', '<leader><leader>k', smart_splits.swap_buf_up)
map('n', '<leader><leader>l', smart_splits.swap_buf_right)


-- map("n", "<leader>qw", ":wq<cr>", { desc = "save and quit window" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

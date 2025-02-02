require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local smart_splits = require('smart-splits')

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>q", "<cmd>q!<cr>", { desc = "quit window" })

-- NOTE: smart-split specifics
map('n', '<C-Left>', smart_splits.resize_left, { desc = "window resize left" })
map('n', '<C-Down>', smart_splits.resize_down, { desc = "window resize down" })
map('n', '<C-Up>', smart_splits.resize_up, { desc = "window resize up" })
map('n', '<C-Right>', smart_splits.resize_right, { desc = "window resize right" })

-- NOTE: automatic indentation
map('n', '>', "V>", { desc = "indent line right" })
map('n', '<', "V<", { desc = "indent line left" })
map('v', '>', "<cmd>vnoremap > >gv<cr>", { desc = "indent selection right" })
map('v', '<', "<cmd>vnoremap < <gv<cr>", { desc = "indent selection right" })

-- NOTE: window actions
-- TODO: should exclude nvimtree etc
map('n', '|', "<C-w>v", { desc = "window split vertical" })
map('n', '\\', "<C-w>s", { desc = "window split horizontal" })

-- map("n", "<leader>qw", ":wq<cr>", { desc = "save and quit window" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

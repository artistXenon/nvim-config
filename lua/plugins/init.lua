return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = require("configs.todo-comments"),
    lazy = false,
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css"
  		},
  	},
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      local nvim_tree = require("nvim-tree")
      nvim_tree.setup {
        actions = {
          open_file = { resize_window = false }
        },
        git = {
          ignore = false,
        },
      }
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      local nvim_tree = require("nvim-tree")
      nvim_tree.setup {
        actions = {
          open_file = { resize_window = false },
          change_dir = { global = true },
        },
        update_focused_file = { enable = true },

        on_attach = function(bufnr)
          local api = require "nvim-tree.api"
	        api.config.mappings.default_on_attach(bufnr)

          vim.keymap.set("n", '.', function()
            local cursor_node = api.tree.get_node_under_cursor()
            if cursor_node ~= nil and cursor_node ~= '' then api.tree.change_root_to_node(cursor_node) end
          end, { desc = "nvim-tree: set root", buffer = bufnr, noremap = true, silent = true, nowait = true })
        end
      }
      -- vim.keymap.set("n", ".")
    end
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "mrjones2014/smart-splits.nvim",
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
      keys = {
        { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  },
  -- {
  --   "mg979/vim-visual-multi",
  --
  -- }
  -- {
  --   "RRethy/vim-illuminate",
  -- }
}

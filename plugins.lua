local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- Leetcode plugin 
  {
   "ianding1/leetcode.vim",
    cmd = {"LeetCodeSignIn", "LeetCodeList", "LeetCodeTest", "LeetCodeSubmit"},
    init = function()
      require("core.utils").load_mappings "leetcode"
    end,
    config = function()
      vim.g.leetcode_browser = 'brave'
      vim.g.leetcode_solution_filetype = 'python3'
    end,
  },

  -- Ripgrep plugin (required for telescope)
  {
    "BurntSushi/ripgrep",
    config = function()
      require("ripgrep").setup()
    end,
  },

  -- A user-friendly alternative to 'find'
  {
    "sharkdp/fd",
    config = function()
      require("fd").setup()
    end,
  },

  -- A plugin for displaying your neovim activity on Discord
  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
    config = function()
      require("presence").setup()
    end,
  }

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins

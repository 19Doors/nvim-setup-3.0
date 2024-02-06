-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function()
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  use("lewis6991/impatient.nvim")

  -- Theme
  use({ "decaycs/decay.nvim", as = "decay" })

  -- DashBoard
  use({ "glepnir/dashboard-nvim" })

  -- Session Manager
  use("Shatur/neovim-session-manager") use({ "stevearc/dressing.nvim" })

  -- Indent
  use("lukas-reineke/indent-blankline.nvim")

  -- AutoPairs With Rainbox
  use({ "windwp/nvim-autopairs" })
  use("mrjones2014/smart-splits.nvim")

  -- WhichKey
  use({
    "folke/which-key.nvim",
  })

  -- Null_ls
  use("jose-elias-alvarez/null-ls.nvim")
  --  use("MunifTanjim/prettier.nvim")

  -- Trouble
  use({
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  })

  -- BufferLine
  use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })

  -- LuaLine
  use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } })

  -- NvimTree
  use({
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- optional, for file icons
    },
    tag = "nightly", -- optional, updated every week. (see issue #1193)
  })

  -- TreeSitter
  use({ "nvim-treesitter/nvim-treesitter" })

  use({ "michaelb/sniprun", run = "bash ./install.sh" })

  -- Org Mode
  use({
    "nvim-orgmode/orgmode",
  })
  use({
    "akinsho/org-bullets.nvim",
    config = function()
      require("org-bullets").setup()
    end,
  })
  use({
    "lukas-reineke/headlines.nvim",
  })

  -- Smooth Scrolling
  use("declancm/cinnamon.nvim")

  -- BetterEscape
  use({ "max397574/better-escape.nvim" })

  -- Telescope
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.x",
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  use({ "williamboman/nvim-lsp-installer", "neovim/nvim-lspconfig" })
  --
  -- Comments
  use({'numToStr/Comment.nvim'})
  -- LspSaga
  --
  use ({
      'nvimdev/lspsaga.nvim',
      --after = 'nvim-lspconfig',
  })
--  use({
--    "glepnir/lspsaga.nvim",
--    branch = "main",
--  })

  -- CMP
  use("onsails/lspkind.nvim")
  use("L3MON4D3/LuaSnip")
  use("19Doors/friendly-snippets")
  use({ "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path", "hrsh7th/cmp-cmdline", "hrsh7th/nvim-cmp" })
  use { 'saadparwaiz1/cmp_luasnip' }

end)

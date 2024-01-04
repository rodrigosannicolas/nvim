return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- Colorscheme
  use({ 'rose-pine/neovim', as = 'rose-pine' })

	-- File explorer
  use { "nvim-tree/nvim-tree.lua", requires = { "nvim-tree/nvim-web-devicons" } }

	-- Parser generator tool
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- Fuzzy finder
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.4', requires = { {'nvim-lua/plenary.nvim'} } }
  use { "nvim-telescope/telescope-file-browser.nvim" }

  -- Airline
  -- use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  -- Git inline blame
  use { 'lewis6991/gitsigns.nvim' }

  -- Auto pairs
  use {	"windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }

  -- Indent blank lines
  use "lukas-reineke/indent-blankline.nvim"

  -- Comment lines
  use "tpope/vim-commentary"

  -- Zenmode
  use { "folke/zen-mode.nvim", opts = { } }

  -- Language Server Provider
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
end)

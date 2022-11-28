local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end
vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- use {
  --   'svrana/neosolarized.nvim',
  --   requires = { 'tjdevries/colorbuddy.nvim' }
  -- }
  use 'jacoborus/tender.vim'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      local saga = require("lspsaga")

      saga.init_lsp_saga({
        -- your configuration
      })
    end,
  })
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'
  -- use 'github/copilot.vim'

  use 'dinhhuy258/git.nvim' -- For git blame & browse

  use 'fatih/vim-go'
  use 'cespare/vim-toml'
  use 'machakann/vim-highlightedyank'
  use 'tpope/vim-commentary'
  use 'vim-test/vim-test'
  use 'dense-analysis/ale'
  use 'folke/lsp-colors.nvim'
  use 't9md/vim-quickhl'
  -- use { 'neoclide/coc.nvim', branch = 'release' }

  -- Deoplete ++
  -- use {'Shougo/deoplete.nvim', run = ':UpdateRemotePlugins'}
  use 'deoplete-plugins/deoplete-tag'
  use { 'deathlyfrantic/deoplete-spell', branch = 'main' }
  use 'zchee/deoplete-clang'
  use 'Shougo/neoinclude.vim'
  use { 'thinca/vim-quickrun' }
  use 'Shougo/vimproc.vim'
  use 'Shougo/deoplete.nvim'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'machakann/vim-sandwich'
  use 'rcarriga/nvim-notify'
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  use 'RRethy/vim-illuminate'
  use 'sunjon/stylish.nvim'
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

  use("petertriho/nvim-scrollbar")
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup()
      require("scrollbar.handlers.gitsigns").setup()
    end
  }
  use {
    "kevinhwang91/nvim-hlslens",
    config = function()
      -- require('hlslens').setup() is not required
      require("scrollbar.handlers.search").setup({
        -- hlslens config overrides
      })
    end,
  }

  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'akinsho/git-conflict.nvim', tag = "*", config = function()
    require('git-conflict').setup()
  end }
  use 'lukas-reineke/indent-blankline.nvim'
  use "rafamadriz/friendly-snippets"
  use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end
  }

  use 'romgrk/barbar.nvim'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use({ "yioneko/nvim-yati", tag = "*", requires = "nvim-treesitter/nvim-treesitter" })
  use 'nvim-treesitter/nvim-treesitter-context'
  use "nvim-lua/plenary.nvim"
  use 'nvim-lua/popup.nvim'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-nvim-lsp-document-symbol'
  use 'hrsh7th/cmp-cmdline'

  use {
    'pwntester/octo.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'kyazdani42/nvim-web-devicons',
    },
    config = function()
      require "octo".setup()
    end
  }

  use 'j-hui/fidget.nvim'
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }
  use {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter"
  }
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  }
  use 'norcalli/nvim-colorizer.lua'
  use({
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
        -- add any options here
      })
    end,
    requires = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  })
  use 'p00f/nvim-ts-rainbow'
  use 'RRethy/vim-illuminate'
end)

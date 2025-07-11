local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  git = {
    clone_timeout = 10000,
  },
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

-- Install your plugins here
return packer.startup(function(use)
  use({ "wbthomason/packer.nvim" }) -- Have packer manage itself
  use({ "nvim-lua/plenary.nvim" })  -- Useful lua functions used by lots of plugins
  use({ "windwp/nvim-autopairs" })  -- Autopairs, integrates with both cmp and treesitter
  use({ "numToStr/Comment.nvim" })
  use({ "JoosepAlviste/nvim-ts-context-commentstring" })
  use({ "kyazdani42/nvim-web-devicons" })
  use({ "kyazdani42/nvim-tree.lua" })
  use({ "akinsho/bufferline.nvim" })
  use({ "moll/vim-bbye" })
  use({ "nvim-lualine/lualine.nvim" })
  use({ "akinsho/toggleterm.nvim" })
  use({ "ahmedkhalf/project.nvim" })
  use({ "lewis6991/impatient.nvim" })
  use({ "lukas-reineke/indent-blankline.nvim" })
  use({ "goolord/alpha-nvim" })
  use({ "folke/which-key.nvim" })
  use("nvim-tree/nvim-web-devicons")
  -- Colorschemes
  use({ "folke/tokyonight.nvim" })
  -- use({ "lunarvim/darkplus.nvim", commit = "13ef9daad28d3cf6c5e793acfc16ddbf456e1c83" })

  -- Cmp
  use({ "hrsh7th/nvim-cmp" })         -- The completion plugin
  use({ "hrsh7th/cmp-buffer" })       -- buffer completions
  use({ "hrsh7th/cmp-path" })         -- path completions
  use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
  use({ "hrsh7th/cmp-nvim-lsp" })
  use({ "hrsh7th/cmp-nvim-lua" })

  -- Snippets
  use({ "L3MON4D3/LuaSnip" }) --snippet engine
  -- use({ "rafamadriz/friendly-snippets", commit = "2be79d8a9b03d4175ba6b3d14b082680de1b31b1" }) -- a bunch of snippets to use

  -- LSP
  use({ "neovim/nvim-lspconfig" })           -- enable LSP
  use({ "williamboman/mason.nvim" })         -- simple to use language server installer
  use({ "williamboman/mason-lspconfig.nvim" })
  use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters
  -- use({ "RRethy/vim-illuminate", commit = "a2e8476af3f3e993bb0d6477438aad3096512e42" })

  -- Telescope
  use({ "nvim-telescope/telescope.nvim" })

  -- Treesitter
  use({ 
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = 'main',
    build = ':TSUpdate'
   })

  use({ "norcalli/nvim-colorizer.lua" })
  use({ "yamatsum/nvim-cursorline" })
  use("navarasu/onedark.nvim")


  use({ "nvim-telescope/telescope-file-browser.nvim" })
  use({ "LinArcX/telescope-env.nvim" })

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

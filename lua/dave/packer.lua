return require('packer').startup(function()


	-- Packer can manage itself
  use 'wbthomason/packer.nvim'


 -- Colorscheme section
 use("gruvbox-community/gruvbox")
 use("folke/tokyonight.nvim")

 use("nvim-treesitter/nvim-treesitter", {
     --run = ":TSUpdate"
 })
 use("nvim-treesitter/playground")
 use("romgrk/nvim-treesitter-context")


  -- general dev
  -- use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use  'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
 -- use 'glepnir/lspsaga.nvim'
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use { "nvim-telescope/telescope-project.nvim" }
  use { 'dhruvmanila/telescope-bookmarks.nvim' }

  use { "lifer0se/ezbookmarks.nvim" }
  use { "itchyny/vim-external" }
--Refine editing experience
use 'b3nj5m1n/kommentary'

use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

use 'ThePrimeagen/harpoon'

use {
  'goolord/alpha-nvim',
  requires = { 'kyazdani42/nvim-web-devicons' },
  config = function ()
      require'alpha'.setup(require'alpha.themes.startify'.config)
  end
}


end)

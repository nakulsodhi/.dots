local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{ 'rose-pine/neovim', name = 'rose-pine' },
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{"theprimeagen/harpoon"},
	{"mbbill/undotree"},
	{"tpope/vim-fugitive"},


	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},

	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
    {
        'L3MON4D3/LuaSnip',
        dependencies = {'saadparwaiz1/cmp_luasnip'}, 
    },
    {"rafamadriz/friendly-snippets"},


  { "AbdelrahmanDwedar/awesome-nvim-colorschemes" },
  { 'rebelot/kanagawa.nvim'},
  { 'nvim-tree/nvim-tree.lua'},
  { 'nvim-tree/nvim-web-devicons'},
  { 'nvim-lualine/lualine.nvim'},



  {
      "kylechui/nvim-surround",
      version = "*", -- Use for stability; omit to use `main` branch for the latest features
      event = "VeryLazy",
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  },

  {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      opts = {} -- this is equalent to setup({}) function
  },

  {
      "abecodes/tabout.nvim"
  },
  {"folke/zen-mode.nvim"},
  {"lewis6991/gitsigns.nvim"},
  {'nvim-tree/nvim-web-devicons'},
  {'lervag/vimtex',
  lazy = false
  },
    {'romgrk/barbar.nvim',
  dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function() vim.g.barbar_auto_setup = false  end,
  },
  

})

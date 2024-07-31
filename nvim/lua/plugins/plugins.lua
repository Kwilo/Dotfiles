return {
	-- Tree-sitter
	{
		"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate"
	},
	-- Telescope
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim"
		}
	},
	-- Mason // LSPs
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	-- CMP
	{
		'hrsh7th/nvim-cmp',
		-- load cmp on InsertEnter
		event = 'InsertEnter',
		-- these dependencies will only be loaded when cmp loads
		-- dependencies are always lazy-loaded unless specified otherwise
		dependencies = {
			'L3MON4D3/LuaSnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-buffer',
			'saadparwaiz1/cmp_luasnip',
		},
	},
	-- Git
	{
		"lewis6991/gitsigns.nvim",
	},
	-- Lualine
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		keys = {{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"tpope/vim-sleuth"
	},
}

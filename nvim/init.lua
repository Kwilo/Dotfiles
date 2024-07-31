vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true
----- GENERAL OPTIONS -----
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.showmode = false-- disable when you install a statusline
vim.opt.clipboard = "unnamedplus"
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.inccommand = "split"
vim.opt.cursorline = true
vim.opt.scrolloff = 15
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

----- KEYMAPS ----- 

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

----- ADV SETTINGS -----

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

----- PLUGINS -----

require("config.lazy")
require("mason").setup()
require("mason-lspconfig").setup()
-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}

require("gitsigns").setup()
require("lualine").setup({
	options = {
		theme = 'horizon'
	}
})
config = function()
	require("which-key").setup()
	-- Document existing key chains
	require("which-key").register({
		["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
		["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
		["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
		["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
		["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
		["<leader>t"] = { name = "[T]oggle", _ = "which_key_ignore" },
		["<leader>h"] = { name = "Git [H]unk", _ = "which_key_ignore" },
	})
	-- visual mode
	require("which-key").register({
		["<leader>h"] = { "Git [H]unk" },
	}, { mode = "v" })
end,

----- COLORSCHEME -----

-- require("nightfox").setup({palettes = {carbonfox = {bg1 = "#0f0f0f"}}})
-- vim.cmd("colorscheme carbonfox")

require("cyberdream").setup({
	borderless_telescope = true,
	-- Disable or enable colorscheme extensions
	extensions = { telescope = true },
})
vim.cmd("colorscheme cyberdream")

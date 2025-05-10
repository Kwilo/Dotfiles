
-- LAZY.NVIM

require("config.lazy")

-- VIM.O

vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.smartcase = true
vim.o.ignorecase = true

vim.o.relativenumber = true

vim.o.winborder = "rounded"

-- 	VIM.OPT

vim.opt.scrolloff = 99

-- Moonfly Colorscheme Config

vim.cmd [[
	colorscheme moonfly
	hi Normal ctermbg=none guibg=none
	hi LineNr ctermbg=none guibg=none
	"hi SignColumn ctermbg=none guibg=none
]]
-- vim.g.moonflyItalics = false
-- vim.g.moonflyTransparent = true
-- vim.g.moonflyUnderlineMatchParen = true

-- Extra plugin conf

require("mason").setup()

-- LSP

vim.lsp.enable({"pyright", "clangd", "biome"})

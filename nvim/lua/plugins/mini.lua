return {
	{
		"echasnovski/mini.surround",
		opts = {
			mappings = {
				add = 'sa', -- Add surrounding in Normal and Visual modes
				delete = 'sd', -- Delete surrounding
				find = 'sf', -- Find surrounding (to the right)
				find_left = 'sF', -- Find surrounding (to the left)
				highlight = 'sh', -- Highlight surrounding
				replace = 'sr', -- Replace surrounding
				update_n_lines = 'sn', -- Update `n_lines`

				suffix_last = 'l', -- Suffix to search with "prev" method
				suffix_next = 'n', -- Suffix to search with "next" method
			  },
		}
	},
	
	{
		"echasnovski/mini.pairs",
		opts = {
		  mappings = {
			['('] = { action = 'open', pair = '()', neigh_pattern = '[^\\].' },
			['['] = { action = 'open', pair = '[]', neigh_pattern = '[^\\].' },
			['{'] = { action = 'open', pair = '{}', neigh_pattern = '[^\\].' },

			[')'] = { action = 'close', pair = '()', neigh_pattern = '[^\\].' },
			[']'] = { action = 'close', pair = '[]', neigh_pattern = '[^\\].' },
			['}'] = { action = 'close', pair = '{}', neigh_pattern = '[^\\].' },

			['"'] = { action = 'closeopen', pair = '""', neigh_pattern = '[^\\].', register = { cr = false } },
			["'"] = { action = 'closeopen', pair = "''", neigh_pattern = '[^%a\\].', register = { cr = false } },
			['`'] = { action = 'closeopen', pair = '``', neigh_pattern = '[^\\].', register = { cr = false } },
		  },
		}
	},
	
	{
		"echasnovski/mini.splitjoin",
		opts = {}
	},
	
	{
		"echasnovski/mini.diff", 
		opts = {
			view = {
				style = "sign",
				signs = {add = "+", change = "~", delete = "_"}
			}
		}
	},
	
	{
		"echasnovski/mini.cursorword",
		opts = {
			delay = 400,
		}
	},
	
	{
		"echasnovski/mini.icons", 
		opts = {}
	},
	
	{
		"echasnovski/mini.starter",
		opts = {}
	},
	
	{
		"echasnovski/mini.statusline",
		opts = {}
	},
}

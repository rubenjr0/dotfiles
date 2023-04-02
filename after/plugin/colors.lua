local mocha = require("catppuccin.palettes").get_palette "mocha"

vim.g.lightline = { colorscheme = 'catppuccin' }

function ColorMyPencils(color)
	color = color or "catppuccin-mocha"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = mocha.mantle })
	vim.api.nvim_set_hl(0, "LineNr", { bg = mocha.mantle })
	vim.api.nvim_set_hl(0, "CursorLineNr", { bg = mocha.crust, fg = mocha.red })
end

ColorMyPencils()

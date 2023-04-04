local palette = require("catppuccin.palettes").get_palette "mocha"

vim.g.lightline = { colorscheme = 'catppuccin' }

function ColorMyPencils(color)
	color = color or "catppuccin-mocha"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = palette.mantle })
	vim.api.nvim_set_hl(0, "LineNr", { bg = palette.mantle })
	vim.api.nvim_set_hl(0, "CursorLineNr", { bg = palette.crust, fg = palette.red })
end

ColorMyPencils()
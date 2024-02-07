function ApplyColor(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

    if vim.g.neovide then
        vim.g.neovide_theme = 'color'
    end

	vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
    
end
ApplyColor("rose-pine")

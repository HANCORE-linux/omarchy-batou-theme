return {
	{
		"bjarneo/aether.nvim",
		name = "aether",
		priority = 1000,
		opts = {
			disable_italics = false,
			colors = {
				-- Monotone shades (base00-base07)
				base00 = "#121212", -- Default background
				base01 = "#383735", -- Lighter background (status bars)
				base02 = "#121212", -- Selection background
				base03 = "#595c68", -- Comments, invisibles
				base04 = "#dbd9d3", -- Dark foreground
				base05 = "#bcb9b2", -- Default foreground
				base06 = "#a4a4a4", -- Light foreground
				base07 = "#dbd9d3", -- Light background

				-- Accent colors (base08-base0F)
				base08 = "#e19e74", -- Variables, errors, red
				base09 = "#984b1e", -- Integers, constants, orange
				base0A = "#c6c4b0", -- Classes, types, yellow
				base0B = "#a5a297", -- Strings, green
				base0C = "#e1d574", -- Support, regex, cyan
				base0D = "#777472", -- Functions, keywords, blue
				base0E = "#8a8575", -- Keywords, storage, magenta
				base0F = "#8f4445", -- Deprecated, brown/yellow
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
